// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'diac_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiacConfig _$DiacConfigFromJson(Map<String, dynamic> json) {
  return _DiacConfig.fromJson(json);
}

class _$DiacConfigTearOff {
  const _$DiacConfigTearOff();

  _DiacConfig call({@required String property}) {
    return _DiacConfig(
      property: property,
    );
  }
}

// ignore: unused_element
const $DiacConfig = _$DiacConfigTearOff();

mixin _$DiacConfig {
  String get property;

  Map<String, dynamic> toJson();
  $DiacConfigCopyWith<DiacConfig> get copyWith;
}

abstract class $DiacConfigCopyWith<$Res> {
  factory $DiacConfigCopyWith(
          DiacConfig value, $Res Function(DiacConfig) then) =
      _$DiacConfigCopyWithImpl<$Res>;
  $Res call({String property});
}

class _$DiacConfigCopyWithImpl<$Res> implements $DiacConfigCopyWith<$Res> {
  _$DiacConfigCopyWithImpl(this._value, this._then);

  final DiacConfig _value;
  // ignore: unused_field
  final $Res Function(DiacConfig) _then;

  @override
  $Res call({
    Object property = freezed,
  }) {
    return _then(_value.copyWith(
      property: property == freezed ? _value.property : property as String,
    ));
  }
}

abstract class _$DiacConfigCopyWith<$Res> implements $DiacConfigCopyWith<$Res> {
  factory _$DiacConfigCopyWith(
          _DiacConfig value, $Res Function(_DiacConfig) then) =
      __$DiacConfigCopyWithImpl<$Res>;
  @override
  $Res call({String property});
}

class __$DiacConfigCopyWithImpl<$Res> extends _$DiacConfigCopyWithImpl<$Res>
    implements _$DiacConfigCopyWith<$Res> {
  __$DiacConfigCopyWithImpl(
      _DiacConfig _value, $Res Function(_DiacConfig) _then)
      : super(_value, (v) => _then(v as _DiacConfig));

  @override
  _DiacConfig get _value => super._value as _DiacConfig;

  @override
  $Res call({
    Object property = freezed,
  }) {
    return _then(_DiacConfig(
      property: property == freezed ? _value.property : property as String,
    ));
  }
}

@JsonSerializable()
class _$_DiacConfig with DiagnosticableTreeMixin implements _DiacConfig {
  const _$_DiacConfig({@required this.property}) : assert(property != null);

  factory _$_DiacConfig.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacConfigFromJson(json);

  @override
  final String property;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiacConfig(property: $property)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiacConfig'))
      ..add(DiagnosticsProperty('property', property));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacConfig &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(property);

  @override
  _$DiacConfigCopyWith<_DiacConfig> get copyWith =>
      __$DiacConfigCopyWithImpl<_DiacConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacConfigToJson(this);
  }
}

abstract class _DiacConfig implements DiacConfig {
  const factory _DiacConfig({@required String property}) = _$_DiacConfig;

  factory _DiacConfig.fromJson(Map<String, dynamic> json) =
      _$_DiacConfig.fromJson;

  @override
  String get property;
  @override
  _$DiacConfigCopyWith<_DiacConfig> get copyWith;
}
