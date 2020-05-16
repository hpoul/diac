import 'package:diac_client/src/dto/diac_dto.dart';

enum DiacEventType {
  shown,
  dismissed,
}

extension DiacEventTypeToString on DiacEventType {
  String toStringBare() => toString().substring(toString().indexOf('.') + 1);
}

class DiacEvent {
  DiacEvent({this.type, this.message});

  final DiacEventType type;
  final DiacMessage message;

  @override
  String toString() {
    return 'DiacEvent{type: $type, message: $message}';
  }
}

class DiacEventDismissed extends DiacEvent {
  DiacEventDismissed({
    DiacMessage message,
    this.action,
  }) : super(type: DiacEventType.dismissed, message: message);

  final DiacMessageAction action;

  @override
  String toString() {
    return 'DiacEventDismissed{action: $action, ${super.toString()}}';
  }
}
