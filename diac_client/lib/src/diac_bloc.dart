import 'dart:async';

import 'package:clock/clock.dart';
import 'package:diac_client/src/diac_client.dart';
import 'package:diac_client/src/diac_event.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:diac_client/src/dto/diac_store.dart';
import 'package:expressions/expressions.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

final _logger = Logger('diac.diac_bloc');

class _NewData {
  _NewData({
    @required this.closedMessages,
    @required this.data,
  })  : assert(closedMessages != null),
        assert(data != null);
  final Set<String> closedMessages;
  final DiacData data;
}

typedef AdditionalContextBuilder = Future<Map<String, Object>> Function();

class DiacBloc with StreamSubscriberBase {
  DiacBloc({
    @required DiacOpts opts,
    this.contextBuilder,
  })  : assert(opts != null),
        _client = DiacClient(opts: opts) {
//    handle(_client.store.onValueChanged.listen((event) {
//      seenMessages.clear();
//      seenMessages.addAll(event.seen.map((e) => e.messageUuid));
//    }));
    _seenMessages = _client.store.onValueChangedAndLoad
        .map((event) {
          return _NewData(
            closedMessages: event.seen
                .where((e) => e.closedAt != null)
                .map((e) => e.messageUuid)
                .toSet(),
            data: event,
          );
        })
        .publishValueAsync()
        .autoConnect(connection: (sub) => handle(sub))
        .doOnDone(() {
          _logger.finer('Done?!');
        });
    handle(events.listen((event) {
      _logger.fine('handling event $event');
      if (event is DiacEventDismissed) {
        _logger.finer('setting ${event.message.uuid} as dismissed.');
        _client.store.update((data) => data.copyWith(seen: [
              ...data.seen,
              DiacHistory(
                messageUuid: event.message.uuid,
                messageKey: event.message.key,
                closedAt: clock.now(),
                action: event.action.key,
              ),
            ]));
      }
    }));
  }

  final DiacClient _client;
  final StreamController<DiacEvent> _events = StreamController.broadcast();
  Stream<_NewData> _seenMessages;

  Stream<DiacEvent> get events => _events.stream;

  /// callback to create additional context data when evaluating the
  /// expression of [DiacMessage].
  final AdditionalContextBuilder contextBuilder;

  final Map<String, ValueStream<DiacMessage>> _messageForLabel = {};

  Stream<DiacMessage> messageForLabel(String label) =>
      _messageForLabel[label] ??= _seenMessages
          .doOnData((event) {
            _logger.finer('messageForLabel - data: $event');
          })
          .asyncMap(
            (data) async => await _findNextMessageFromData(
              data.data,
              data.closedMessages,
              {
                'label': label,
              },
            ),
          )
          .publishValueAsync()
          .autoConnect();

  Future<DiacMessage> _findNextMessageFromData(
    DiacData data,
    Set<String> seenMessages,
    Map<String, Object> context,
  ) async {
    try {
      final now = clock.now();
      _logger.finest('Find next message. ${data.lastConfig.messages}');
      for (final message in data.lastConfig.messages) {
        if (seenMessages.contains(message.uuid)) {
          _logger.finest('message was already seen ${message.uuid}');
          continue;
        }
        if (!now.isInRange(message.dateStart, message.dateEnd)) {
          continue;
        }
        if (message.expression != null) {
          final expr = Expression.parse(message.expression);
          const evaluator = MapAwareEvaluator();
          try {
            final exprContext = await _createExpressionContext(data, context);
            final dynamic result = evaluator.eval(
              expr,
              exprContext,
            );
            _logger.finest('Evaluated expression ${message.expression} '
                'with $exprContext: $result');
            if (result is bool && !result) {
              continue;
            }
          } catch (e, stackTrace) {
            _logger.warning(
                'Error while evaluating expression ${message.expression}. Skipping.',
                e,
                stackTrace);
            continue;
          }
        }
        return message;
      }
    } catch (e, stackTrace) {
      _logger.severe('Error while finding next message', e, stackTrace);
      rethrow;
    }
//    data.seen
    _logger.finer('no message found.');
    return null;
  }

  Future<Map<String, Object>> _createExpressionContext(
      DiacData data, Map<String, Object> context) async {
    assert(data != null);
    assert(context != null);
    final days = data.firstLaunch.difference(clock.now()).abs().inDays;
    final pi = await DiacClient.getPackageInfo();
    return {
      'user': {
        'days': days,
      },
      'packageInfo': {
        'version': pi.version,
        'buildNumber': int.tryParse(pi.buildNumber),
        'packageName': pi.packageName,
      },
      'action': (String messageKey) {
        final result = data.seen
            .lastWhere(
                (element) =>
                    element.messageKey == messageKey && element.action != null,
                orElse: () => null)
            ?.action;
        _logger.fine('finding action for $messageKey = $result');
        return result;
      },
      ...?contextBuilder == null ? null : await contextBuilder(),
      ...context,
    };
  }

  void dispose() {
    _logger.fine('Disposing.');
    cancelSubscriptions();
    _messageForLabel.clear();
  }

  /// clears the persisted state and starts from scratch.
  void clear() {
    _client.store.delete();
  }
}

extension DiacBlocExt on DiacBloc {
  void publishEvent(DiacEvent event) {
    _events.add(event);
  }
}

extension on DateTime {
  bool isInRange(DateTime start, DateTime end) =>
      (start == null || isAfter(start)) && (end == null || isBefore(end));
}

extension<T> on Stream<T> {
  /// TODO remove this once this is resolved: https://github.com/ReactiveX/rxdart/issues/463
  ValueConnectableStream<T> publishValueAsync() =>
      ValueConnectableStream<T>(this, sync: false);
}

class MapAwareEvaluator extends ExpressionEvaluator {
  const MapAwareEvaluator();

  @override
  dynamic evalMemberExpression(
      MemberExpression expression, Map<String, dynamic> context) {
    final dynamic object = eval(expression.object, context);
    if (object is Map) {
      return object[expression.property.name];
    } else {
      throw UnsupportedError('Member expressions not supported for '
          '${object.runtimeType} $object');
    }
  }
}
