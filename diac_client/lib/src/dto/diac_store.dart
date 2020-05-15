import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';

part 'diac_store.g.dart';

part 'diac_store.freezed.dart';

@freezed
abstract class DiacData with _$DiacData implements HasToJson {
  const factory DiacData({
    @required DateTime firstLaunch,
    @required List<DiacHistory> seen,
    @required DateTime lastConfigFetchedAt,
    DiacConfig lastConfig,
  }) = _DiacData;

  factory DiacData.fromJson(Map<String, dynamic> json) =>
      _$DiacDataFromJson(json);
}

@freezed
abstract class DiacHistory with _$DiacHistory {
  const factory DiacHistory({
    @JsonKey(name: 'id') @required String messageUuid,
    @JsonKey(name: 'key') @required String messageKey,
    DateTime closedAt,

    /// tapped action of that message.
    String action,
  }) = _DiacHistory;

  factory DiacHistory.fromJson(Map<String, dynamic> json) =>
      _$DiacHistoryFromJson(json);
}
