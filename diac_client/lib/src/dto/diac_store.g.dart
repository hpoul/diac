// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diac_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiacData _$_$_DiacDataFromJson(Map<String, dynamic> json) {
  return _$_DiacData(
    firstLaunch: json['firstLaunch'] == null
        ? null
        : DateTime.parse(json['firstLaunch'] as String),
    seen: (json['seen'] as List)
        ?.map((e) =>
            e == null ? null : DiacHistory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastConfigFetchedAt: json['lastConfigFetchedAt'] == null
        ? null
        : DateTime.parse(json['lastConfigFetchedAt'] as String),
    lastConfig: json['lastConfig'] == null
        ? null
        : DiacConfig.fromJson(json['lastConfig'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DiacDataToJson(_$_DiacData instance) =>
    <String, dynamic>{
      'firstLaunch': instance.firstLaunch?.toIso8601String(),
      'seen': instance.seen,
      'lastConfigFetchedAt': instance.lastConfigFetchedAt?.toIso8601String(),
      'lastConfig': instance.lastConfig,
    };

_$_DiacHistory _$_$_DiacHistoryFromJson(Map<String, dynamic> json) {
  return _$_DiacHistory(
    messageUuid: json['messageUuid'] as String,
    closedAt: json['closedAt'] == null
        ? null
        : DateTime.parse(json['closedAt'] as String),
  );
}

Map<String, dynamic> _$_$_DiacHistoryToJson(_$_DiacHistory instance) =>
    <String, dynamic>{
      'messageUuid': instance.messageUuid,
      'closedAt': instance.closedAt?.toIso8601String(),
    };

// **************************************************************************
// StaticTextGenerator
// **************************************************************************

// ignore_for_file: implicit_dynamic_parameter,strong_mode_implicit_dynamic_parameter,strong_mode_implicit_dynamic_variable,non_constant_identifier_names,unused_element