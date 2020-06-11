import 'dart:async';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:diac_client/diac_client.dart';
import 'package:diac_client/src/diac_bloc.dart';
import 'package:diac_client/src/diac_client.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

final _logger = Logger('diac.diac_client_test');

void main() {
  Logger.root.level = Level.ALL;
  PrintAppender().attachToLogger(Logger.root);

  setUpAll(() async {
    await TestUtil.mockPathProvider();
  });
  setUp(() async {
    // at the start of every test, clear storage.
    final c = DiacClient(opts: DiacOpts(endpointUrl: ''));
    await c.dispose();
    await c.store.delete();
    await c.store.dispose();
  });

  Future<void> _wait() async =>
      await Future<void>.delayed(const Duration(milliseconds: 100));

  Future<StreamSubscription<void>> _subscribe(DiacBloc diac) async {
    return diac.messageForLabel('test').listen((event) {
      _logger.finer('Got messages $event');
    });
  }

  group('basic client test', () {
    test('Read stuff', () async {
      final diac = DiacBloc(
        opts: DiacOpts(endpointUrl: '', disableConfigFetch: true),
      );
      {
        final subscription = await _subscribe(diac);
        await _wait();
        await subscription.cancel();
        await _wait();
      }
      {
        final subscription = await _subscribe(diac);
        await _wait();
        await subscription.cancel();
        await _wait();
      }
      diac.dispose();
    });
    test('Test the expressions to make sure we get the message.', () async {
      _logger.info('====================');
      final diac = DiacBloc(
        opts: DiacOpts(
          endpointUrl: '',
          disableConfigFetch: true,
          initialConfig: DiacConfig(
            updatedAt: clock.now().toUtc(),
            messages: [
              DiacMessage(
                uuid: Uuid().v4(),
                body: 'msg1',
                key: 'msg1',
                actions: [],
                expression: 'test.value == "first" && user.days > -1',
              ),
            ],
          ),
        ),
        contextBuilder: () async => {
          'test': {'value': 'first'},
        },
      );
      await expectLater(
        diac.messageForLabel('x'),
        emits(
          predicate<DiacMessageDisplay>((val) => val.message.key == 'msg1'),
        ),
      );
      diac.dispose();
    });
    test('Test there is only one request', () async {
      final diacClient = DiacClient(opts: DiacOpts(endpointUrl: '?'));
      final diacApi = MockDiacApi();
      when(diacApi.fetchConfig()).thenAnswer((realInvocation) async {
        _logger.fine('fetching config.');
        await Future<void>.delayed(const Duration(milliseconds: 200));
        return DiacConfig(updatedAt: clock.now().toUtc(), messages: []);
      });
      diacClient.api = diacApi;

      final sub = diacClient.store.onValueChangedAndLoad.listen((event) {
        _logger.finer('event: $event');
      });
      await Future<void>.delayed(const Duration(milliseconds: 100));
      await sub.cancel();
      final sub2 = diacClient.store.onValueChangedAndLoad.listen((event) {
        _logger.finer('event: $event');
      });
      await Future<void>.delayed(const Duration(milliseconds: 100));
      await sub2.cancel();
      await Future<void>.delayed(const Duration(milliseconds: 100));
      diacClient.store.onValueChangedAndLoad.listen((event) {
        _logger.finer('event: $event');
      });

      verify(diacApi.fetchConfig());
      verifyNoMoreInteractions(diacApi);
      await diacClient.dispose();
    });
  });
}

class MockDiacApi extends Mock implements DiacApi {}

class TestUtil {
  static Future<void> mockPathProvider() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    // Create a temporary directory.
    final directory = await Directory.systemTemp.createTemp('flutter_tmp');

    // Mock out the MethodChannel for the path_provider plugin.
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((MethodCall methodCall) async {
      // If you're getting the apps documents directory, return the path to the
      // temp directory on the test environment instead.
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        _logger.info('Using app directory $directory');
        return directory.path;
      }
      return null;
    });

    const MethodChannel('plugins.flutter.io/package_info')
        .setMockMethodCallHandler((call) async {
      return {
        'appName': 'testDiac',
        'packageName': 'design.codeux.diac.test',
        'version': '0.0.1',
        'buildNumber': '0',
      };
    });
  }
}
