// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diac_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiacData _$DiacDataFromJson(Map<String, dynamic> json) {
  return _DiacData.fromJson(json);
}

/// @nodoc
class _$DiacDataTearOff {
  const _$DiacDataTearOff();

  _DiacData call(
      {required String deviceId,
      required DateTime firstLaunch,
      required List<DiacHistory> seen,
      required DateTime lastConfigFetchedAt,
      DiacConfig? lastConfig}) {
    return _DiacData(
      deviceId: deviceId,
      firstLaunch: firstLaunch,
      seen: seen,
      lastConfigFetchedAt: lastConfigFetchedAt,
      lastConfig: lastConfig,
    );
  }

  DiacData fromJson(Map<String, Object> json) {
    return DiacData.fromJson(json);
  }
}

/// @nodoc
const $DiacData = _$DiacDataTearOff();

/// @nodoc
mixin _$DiacData {
  /// Once everything is migrated, make this a required field.
  /// (Uuid to uniquely identify this device).
  String get deviceId => throw _privateConstructorUsedError;
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  List<DiacHistory> get seen => throw _privateConstructorUsedError;
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  DiacConfig? get lastConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiacDataCopyWith<DiacData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiacDataCopyWith<$Res> {
  factory $DiacDataCopyWith(DiacData value, $Res Function(DiacData) then) =
      _$DiacDataCopyWithImpl<$Res>;
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig? lastConfig});

  $DiacConfigCopyWith<$Res>? get lastConfig;
}

/// @nodoc
class _$DiacDataCopyWithImpl<$Res> implements $DiacDataCopyWith<$Res> {
  _$DiacDataCopyWithImpl(this._value, this._then);

  final DiacData _value;
  // ignore: unused_field
  final $Res Function(DiacData) _then;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<DiacHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as DiacConfig?,
    ));
  }

  @override
  $DiacConfigCopyWith<$Res>? get lastConfig {
    if (_value.lastConfig == null) {
      return null;
    }

    return $DiacConfigCopyWith<$Res>(_value.lastConfig!, (value) {
      return _then(_value.copyWith(lastConfig: value));
    });
  }
}

/// @nodoc
abstract class _$DiacDataCopyWith<$Res> implements $DiacDataCopyWith<$Res> {
  factory _$DiacDataCopyWith(_DiacData value, $Res Function(_DiacData) then) =
      __$DiacDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String deviceId,
      DateTime firstLaunch,
      List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig? lastConfig});

  @override
  $DiacConfigCopyWith<$Res>? get lastConfig;
}

/// @nodoc
class __$DiacDataCopyWithImpl<$Res> extends _$DiacDataCopyWithImpl<$Res>
    implements _$DiacDataCopyWith<$Res> {
  __$DiacDataCopyWithImpl(_DiacData _value, $Res Function(_DiacData) _then)
      : super(_value, (v) => _then(v as _DiacData));

  @override
  _DiacData get _value => super._value as _DiacData;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_DiacData(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seen: seen == freezed
          ? _value.seen
          : seen // ignore: cast_nullable_to_non_nullable
              as List<DiacHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastConfig: lastConfig == freezed
          ? _value.lastConfig
          : lastConfig // ignore: cast_nullable_to_non_nullable
              as DiacConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiacData with DiagnosticableTreeMixin implements _DiacData {
  const _$_DiacData(
      {required this.deviceId,
      required this.firstLaunch,
      required this.seen,
      required this.lastConfigFetchedAt,
      this.lastConfig});

  factory _$_DiacData.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacDataFromJson(json);

  @override

  /// Once everything is migrated, make this a required field.
  /// (Uuid to uniquely identify this device).
  final String deviceId;
  @override
  final DateTime firstLaunch;
  @override
  final List<DiacHistory> seen;
  @override
  final DateTime lastConfigFetchedAt;
  @override
  final DiacConfig? lastConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiacData(deviceId: $deviceId, firstLaunch: $firstLaunch, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiacData'))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('firstLaunch', firstLaunch))
      ..add(DiagnosticsProperty('seen', seen))
      ..add(DiagnosticsProperty('lastConfigFetchedAt', lastConfigFetchedAt))
      ..add(DiagnosticsProperty('lastConfig', lastConfig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacData &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.firstLaunch, firstLaunch) ||
                const DeepCollectionEquality()
                    .equals(other.firstLaunch, firstLaunch)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.lastConfigFetchedAt, lastConfigFetchedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastConfigFetchedAt, lastConfigFetchedAt)) &&
            (identical(other.lastConfig, lastConfig) ||
                const DeepCollectionEquality()
                    .equals(other.lastConfig, lastConfig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(firstLaunch) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(lastConfigFetchedAt) ^
      const DeepCollectionEquality().hash(lastConfig);

  @JsonKey(ignore: true)
  @override
  _$DiacDataCopyWith<_DiacData> get copyWith =>
      __$DiacDataCopyWithImpl<_DiacData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacDataToJson(this);
  }
}

abstract class _DiacData implements DiacData {
  const factory _DiacData(
      {required String deviceId,
      required DateTime firstLaunch,
      required List<DiacHistory> seen,
      required DateTime lastConfigFetchedAt,
      DiacConfig? lastConfig}) = _$_DiacData;

  factory _DiacData.fromJson(Map<String, dynamic> json) = _$_DiacData.fromJson;

  @override

  /// Once everything is migrated, make this a required field.
  /// (Uuid to uniquely identify this device).
  String get deviceId => throw _privateConstructorUsedError;
  @override
  DateTime get firstLaunch => throw _privateConstructorUsedError;
  @override
  List<DiacHistory> get seen => throw _privateConstructorUsedError;
  @override
  DateTime get lastConfigFetchedAt => throw _privateConstructorUsedError;
  @override
  DiacConfig? get lastConfig => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiacDataCopyWith<_DiacData> get copyWith =>
      throw _privateConstructorUsedError;
}

DiacHistory _$DiacHistoryFromJson(Map<String, dynamic> json) {
  return _DiacHistory.fromJson(json);
}

/// @nodoc
class _$DiacHistoryTearOff {
  const _$DiacHistoryTearOff();

  _DiacHistory call(
      {@JsonKey(name: 'id') required String messageUuid,
      @JsonKey(name: 'key') required String messageKey,
      DateTime? closedAt,
      String? action}) {
    return _DiacHistory(
      messageUuid: messageUuid,
      messageKey: messageKey,
      closedAt: closedAt,
      action: action,
    );
  }

  DiacHistory fromJson(Map<String, Object> json) {
    return DiacHistory.fromJson(json);
  }
}

/// @nodoc
const $DiacHistory = _$DiacHistoryTearOff();

/// @nodoc
mixin _$DiacHistory {
  @JsonKey(name: 'id')
  String get messageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String get messageKey => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiacHistoryCopyWith<DiacHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiacHistoryCopyWith<$Res> {
  factory $DiacHistoryCopyWith(
          DiacHistory value, $Res Function(DiacHistory) then) =
      _$DiacHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String messageUuid,
      @JsonKey(name: 'key') String messageKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class _$DiacHistoryCopyWithImpl<$Res> implements $DiacHistoryCopyWith<$Res> {
  _$DiacHistoryCopyWithImpl(this._value, this._then);

  final DiacHistory _value;
  // ignore: unused_field
  final $Res Function(DiacHistory) _then;

  @override
  $Res call({
    Object? messageUuid = freezed,
    Object? messageKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      messageUuid: messageUuid == freezed
          ? _value.messageUuid
          : messageUuid // ignore: cast_nullable_to_non_nullable
              as String,
      messageKey: messageKey == freezed
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DiacHistoryCopyWith<$Res>
    implements $DiacHistoryCopyWith<$Res> {
  factory _$DiacHistoryCopyWith(
          _DiacHistory value, $Res Function(_DiacHistory) then) =
      __$DiacHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String messageUuid,
      @JsonKey(name: 'key') String messageKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$DiacHistoryCopyWithImpl<$Res> extends _$DiacHistoryCopyWithImpl<$Res>
    implements _$DiacHistoryCopyWith<$Res> {
  __$DiacHistoryCopyWithImpl(
      _DiacHistory _value, $Res Function(_DiacHistory) _then)
      : super(_value, (v) => _then(v as _DiacHistory));

  @override
  _DiacHistory get _value => super._value as _DiacHistory;

  @override
  $Res call({
    Object? messageUuid = freezed,
    Object? messageKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_DiacHistory(
      messageUuid: messageUuid == freezed
          ? _value.messageUuid
          : messageUuid // ignore: cast_nullable_to_non_nullable
              as String,
      messageKey: messageKey == freezed
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as String,
      closedAt: closedAt == freezed
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiacHistory with DiagnosticableTreeMixin implements _DiacHistory {
  const _$_DiacHistory(
      {@JsonKey(name: 'id') required this.messageUuid,
      @JsonKey(name: 'key') required this.messageKey,
      this.closedAt,
      this.action});

  factory _$_DiacHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacHistoryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String messageUuid;
  @override
  @JsonKey(name: 'key')
  final String messageKey;
  @override
  final DateTime? closedAt;
  @override

  /// tapped action of that message.
  final String? action;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiacHistory(messageUuid: $messageUuid, messageKey: $messageKey, closedAt: $closedAt, action: $action)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiacHistory'))
      ..add(DiagnosticsProperty('messageUuid', messageUuid))
      ..add(DiagnosticsProperty('messageKey', messageKey))
      ..add(DiagnosticsProperty('closedAt', closedAt))
      ..add(DiagnosticsProperty('action', action));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacHistory &&
            (identical(other.messageUuid, messageUuid) ||
                const DeepCollectionEquality()
                    .equals(other.messageUuid, messageUuid)) &&
            (identical(other.messageKey, messageKey) ||
                const DeepCollectionEquality()
                    .equals(other.messageKey, messageKey)) &&
            (identical(other.closedAt, closedAt) ||
                const DeepCollectionEquality()
                    .equals(other.closedAt, closedAt)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageUuid) ^
      const DeepCollectionEquality().hash(messageKey) ^
      const DeepCollectionEquality().hash(closedAt) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$DiacHistoryCopyWith<_DiacHistory> get copyWith =>
      __$DiacHistoryCopyWithImpl<_DiacHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacHistoryToJson(this);
  }
}

abstract class _DiacHistory implements DiacHistory {
  const factory _DiacHistory(
      {@JsonKey(name: 'id') required String messageUuid,
      @JsonKey(name: 'key') required String messageKey,
      DateTime? closedAt,
      String? action}) = _$_DiacHistory;

  factory _DiacHistory.fromJson(Map<String, dynamic> json) =
      _$_DiacHistory.fromJson;

  @override
  @JsonKey(name: 'id')
  String get messageUuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'key')
  String get messageKey => throw _privateConstructorUsedError;
  @override
  DateTime? get closedAt => throw _privateConstructorUsedError;
  @override

  /// tapped action of that message.
  String? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiacHistoryCopyWith<_DiacHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
