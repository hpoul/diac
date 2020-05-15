// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diac_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiacConfig _$_$_DiacConfigFromJson(Map<String, dynamic> json) {
  return _$_DiacConfig(
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : DiacMessage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DiacConfigToJson(_$_DiacConfig instance) =>
    <String, dynamic>{
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'messages': instance.messages,
    };

_$_DiacMessage _$_$_DiacMessageFromJson(Map<String, dynamic> json) {
  return _$_DiacMessage(
    uuid: json['uuid'] as String,
    body: json['body'] as String,
    key: json['key'] as String,
    dateStart: json['dateStart'] == null
        ? null
        : DateTime.parse(json['dateStart'] as String),
    dateEnd: json['dateEnd'] == null
        ? null
        : DateTime.parse(json['dateEnd'] as String),
    expression: json['expression'] as String,
    actions: (json['actions'] as List)
        ?.map((e) => e == null
            ? null
            : DiacMessageAction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DiacMessageToJson(_$_DiacMessage instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'body': instance.body,
      'key': instance.key,
      'dateStart': instance.dateStart?.toIso8601String(),
      'dateEnd': instance.dateEnd?.toIso8601String(),
      'expression': instance.expression,
      'actions': instance.actions,
    };

_$_DiacMessageAction _$_$_DiacMessageActionFromJson(Map<String, dynamic> json) {
  return _$_DiacMessageAction(
    key: json['key'] as String,
    label: json['label'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_DiacMessageActionToJson(
        _$_DiacMessageAction instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'url': instance.url,
    };

// **************************************************************************
// StaticTextGenerator
// **************************************************************************

// ignore_for_file: implicit_dynamic_parameter,strong_mode_implicit_dynamic_parameter,strong_mode_implicit_dynamic_variable,non_constant_identifier_names,unused_element
