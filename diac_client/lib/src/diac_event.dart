import 'package:diac_client/src/dto/diac_dto.dart';

enum DiacEventType {
  shown,
  trigger,
  dismissed,
}

extension DiacEventTypeToString on DiacEventType {
  String toStringBare() => toString().substring(toString().indexOf('.') + 1);
}

class DiacEvent {
  DiacEvent({required this.type, required this.message});

  final DiacEventType type;
  final DiacMessage message;

  @override
  String toString() {
    return 'DiacEvent{type: $type, message: $message}';
  }
}

abstract class DiacEventWithAction implements DiacEvent {
  DiacMessageAction? get action;
}

class DiacEventTriggerCustom extends DiacEvent implements DiacEventWithAction {
  DiacEventTriggerCustom({
    required super.message,
    required this.action,
    required this.uri,
  }) : super(type: DiacEventType.dismissed);

  @override
  final DiacMessageAction action;
  final Uri uri;
}

class DiacEventDismissed extends DiacEvent implements DiacEventWithAction {
  DiacEventDismissed({
    required super.message,
    this.action,
  }) : super(type: DiacEventType.dismissed);

  @override
  final DiacMessageAction? action;

  @override
  String toString() {
    return 'DiacEventDismissed{action: $action, ${super.toString()}}';
  }
}
