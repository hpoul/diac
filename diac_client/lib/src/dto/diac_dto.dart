import 'package:freezed_annotation/freezed_annotation.dart';

part 'diac_dto.g.dart';
part 'diac_dto.freezed.dart';

@freezed
abstract class DiacConfig with _$DiacConfig {
  const factory DiacConfig({
    @required DateTime updatedAt,
    @required List<DiacMessage> messages,
  }) = _DiacConfig;

  factory DiacConfig.fromJson(Map<String, dynamic> json) =>
      _$DiacConfigFromJson(json);
}

@freezed
abstract class DiacMessage with _$DiacMessage {
  const factory DiacMessage({
    @required String uuid,
    @required String body,
    @required String key,
    DateTime dateStart,
    DateTime dateEnd,
    String expression,
    @required List<DiacMessageAction> actions,
  }) = _DiacMessage;

  factory DiacMessage.fromJson(Map<String, dynamic> json) =>
      _$DiacMessageFromJson(json);
}

@freezed
abstract class DiacMessageAction with _$DiacMessageAction {
  const factory DiacMessageAction({
    @required String key,
    @required String label,
    String url,

    /// Expression which will be evaluated, if url is null.
    String expression,
  }) = _DiacMessageAction;

  factory DiacMessageAction.fromJson(Map<String, dynamic> json) =>
      _$DiacMessageActionFromJson(json);
}
