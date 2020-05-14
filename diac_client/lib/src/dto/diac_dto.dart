import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diac_dto.g.dart';
part 'diac_dto.freezed.dart';

@freezed
abstract class DiacConfig with _$DiacConfig {
  const factory DiacConfig({
    @required String property,
  }) = _DiacConfig;

  factory DiacConfig.fromJson(Map<String, dynamic> json) =>
      _$DiacConfigFromJson(json);
}
