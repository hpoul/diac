// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diac_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiacData _$DiacDataFromJson(Map<String, dynamic> json) {
  return _DiacData.fromJson(json);
}

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
abstract class _$$_DiacDataCopyWith<$Res> implements $DiacDataCopyWith<$Res> {
  factory _$$_DiacDataCopyWith(
          _$_DiacData value, $Res Function(_$_DiacData) then) =
      __$$_DiacDataCopyWithImpl<$Res>;
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
class __$$_DiacDataCopyWithImpl<$Res> extends _$DiacDataCopyWithImpl<$Res>
    implements _$$_DiacDataCopyWith<$Res> {
  __$$_DiacDataCopyWithImpl(
      _$_DiacData _value, $Res Function(_$_DiacData) _then)
      : super(_value, (v) => _then(v as _$_DiacData));

  @override
  _$_DiacData get _value => super._value as _$_DiacData;

  @override
  $Res call({
    Object? deviceId = freezed,
    Object? firstLaunch = freezed,
    Object? seen = freezed,
    Object? lastConfigFetchedAt = freezed,
    Object? lastConfig = freezed,
  }) {
    return _then(_$_DiacData(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      firstLaunch: firstLaunch == freezed
          ? _value.firstLaunch
          : firstLaunch // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seen: seen == freezed
          ? _value._seen
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
      required final List<DiacHistory> seen,
      required this.lastConfigFetchedAt,
      this.lastConfig})
      : _seen = seen;

  factory _$_DiacData.fromJson(Map<String, dynamic> json) =>
      _$$_DiacDataFromJson(json);

  /// Once everything is migrated, make this a required field.
  /// (Uuid to uniquely identify this device).
  @override
  final String deviceId;
  @override
  final DateTime firstLaunch;
  final List<DiacHistory> _seen;
  @override
  List<DiacHistory> get seen {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seen);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiacData &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality()
                .equals(other.firstLaunch, firstLaunch) &&
            const DeepCollectionEquality().equals(other._seen, _seen) &&
            const DeepCollectionEquality()
                .equals(other.lastConfigFetchedAt, lastConfigFetchedAt) &&
            const DeepCollectionEquality()
                .equals(other.lastConfig, lastConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(firstLaunch),
      const DeepCollectionEquality().hash(_seen),
      const DeepCollectionEquality().hash(lastConfigFetchedAt),
      const DeepCollectionEquality().hash(lastConfig));

  @JsonKey(ignore: true)
  @override
  _$$_DiacDataCopyWith<_$_DiacData> get copyWith =>
      __$$_DiacDataCopyWithImpl<_$_DiacData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiacDataToJson(this);
  }
}

abstract class _DiacData implements DiacData {
  const factory _DiacData(
      {required final String deviceId,
      required final DateTime firstLaunch,
      required final List<DiacHistory> seen,
      required final DateTime lastConfigFetchedAt,
      final DiacConfig? lastConfig}) = _$_DiacData;

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
  _$$_DiacDataCopyWith<_$_DiacData> get copyWith =>
      throw _privateConstructorUsedError;
}

DiacHistory _$DiacHistoryFromJson(Map<String, dynamic> json) {
  return _DiacHistory.fromJson(json);
}

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
abstract class _$$_DiacHistoryCopyWith<$Res>
    implements $DiacHistoryCopyWith<$Res> {
  factory _$$_DiacHistoryCopyWith(
          _$_DiacHistory value, $Res Function(_$_DiacHistory) then) =
      __$$_DiacHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String messageUuid,
      @JsonKey(name: 'key') String messageKey,
      DateTime? closedAt,
      String? action});
}

/// @nodoc
class __$$_DiacHistoryCopyWithImpl<$Res> extends _$DiacHistoryCopyWithImpl<$Res>
    implements _$$_DiacHistoryCopyWith<$Res> {
  __$$_DiacHistoryCopyWithImpl(
      _$_DiacHistory _value, $Res Function(_$_DiacHistory) _then)
      : super(_value, (v) => _then(v as _$_DiacHistory));

  @override
  _$_DiacHistory get _value => super._value as _$_DiacHistory;

  @override
  $Res call({
    Object? messageUuid = freezed,
    Object? messageKey = freezed,
    Object? closedAt = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_DiacHistory(
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
      _$$_DiacHistoryFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String messageUuid;
  @override
  @JsonKey(name: 'key')
  final String messageKey;
  @override
  final DateTime? closedAt;

  /// tapped action of that message.
  @override
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiacHistory &&
            const DeepCollectionEquality()
                .equals(other.messageUuid, messageUuid) &&
            const DeepCollectionEquality()
                .equals(other.messageKey, messageKey) &&
            const DeepCollectionEquality().equals(other.closedAt, closedAt) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messageUuid),
      const DeepCollectionEquality().hash(messageKey),
      const DeepCollectionEquality().hash(closedAt),
      const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_DiacHistoryCopyWith<_$_DiacHistory> get copyWith =>
      __$$_DiacHistoryCopyWithImpl<_$_DiacHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiacHistoryToJson(this);
  }
}

abstract class _DiacHistory implements DiacHistory {
  const factory _DiacHistory(
      {@JsonKey(name: 'id') required final String messageUuid,
      @JsonKey(name: 'key') required final String messageKey,
      final DateTime? closedAt,
      final String? action}) = _$_DiacHistory;

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
  _$$_DiacHistoryCopyWith<_$_DiacHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
