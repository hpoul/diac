// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'diac_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiacData _$DiacDataFromJson(Map<String, dynamic> json) {
  return _DiacData.fromJson(json);
}

class _$DiacDataTearOff {
  const _$DiacDataTearOff();

  _DiacData call(
      {@required DateTime firstLaunch,
      @required List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig lastConfig}) {
    return _DiacData(
      firstLaunch: firstLaunch,
      seen: seen,
      lastConfigFetchedAt: lastConfigFetchedAt,
      lastConfig: lastConfig,
    );
  }
}

// ignore: unused_element
const $DiacData = _$DiacDataTearOff();

mixin _$DiacData {
  DateTime get firstLaunch;
  List<DiacHistory> get seen;
  DateTime get lastConfigFetchedAt;
  DiacConfig get lastConfig;

  Map<String, dynamic> toJson();
  $DiacDataCopyWith<DiacData> get copyWith;
}

abstract class $DiacDataCopyWith<$Res> {
  factory $DiacDataCopyWith(DiacData value, $Res Function(DiacData) then) =
      _$DiacDataCopyWithImpl<$Res>;
  $Res call(
      {DateTime firstLaunch,
      List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig lastConfig});

  $DiacConfigCopyWith<$Res> get lastConfig;
}

class _$DiacDataCopyWithImpl<$Res> implements $DiacDataCopyWith<$Res> {
  _$DiacDataCopyWithImpl(this._value, this._then);

  final DiacData _value;
  // ignore: unused_field
  final $Res Function(DiacData) _then;

  @override
  $Res call({
    Object firstLaunch = freezed,
    Object seen = freezed,
    Object lastConfigFetchedAt = freezed,
    Object lastConfig = freezed,
  }) {
    return _then(_value.copyWith(
      firstLaunch:
          firstLaunch == freezed ? _value.firstLaunch : firstLaunch as DateTime,
      seen: seen == freezed ? _value.seen : seen as List<DiacHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt as DateTime,
      lastConfig:
          lastConfig == freezed ? _value.lastConfig : lastConfig as DiacConfig,
    ));
  }

  @override
  $DiacConfigCopyWith<$Res> get lastConfig {
    if (_value.lastConfig == null) {
      return null;
    }
    return $DiacConfigCopyWith<$Res>(_value.lastConfig, (value) {
      return _then(_value.copyWith(lastConfig: value));
    });
  }
}

abstract class _$DiacDataCopyWith<$Res> implements $DiacDataCopyWith<$Res> {
  factory _$DiacDataCopyWith(_DiacData value, $Res Function(_DiacData) then) =
      __$DiacDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime firstLaunch,
      List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig lastConfig});

  @override
  $DiacConfigCopyWith<$Res> get lastConfig;
}

class __$DiacDataCopyWithImpl<$Res> extends _$DiacDataCopyWithImpl<$Res>
    implements _$DiacDataCopyWith<$Res> {
  __$DiacDataCopyWithImpl(_DiacData _value, $Res Function(_DiacData) _then)
      : super(_value, (v) => _then(v as _DiacData));

  @override
  _DiacData get _value => super._value as _DiacData;

  @override
  $Res call({
    Object firstLaunch = freezed,
    Object seen = freezed,
    Object lastConfigFetchedAt = freezed,
    Object lastConfig = freezed,
  }) {
    return _then(_DiacData(
      firstLaunch:
          firstLaunch == freezed ? _value.firstLaunch : firstLaunch as DateTime,
      seen: seen == freezed ? _value.seen : seen as List<DiacHistory>,
      lastConfigFetchedAt: lastConfigFetchedAt == freezed
          ? _value.lastConfigFetchedAt
          : lastConfigFetchedAt as DateTime,
      lastConfig:
          lastConfig == freezed ? _value.lastConfig : lastConfig as DiacConfig,
    ));
  }
}

@JsonSerializable()
class _$_DiacData with DiagnosticableTreeMixin implements _DiacData {
  const _$_DiacData(
      {@required this.firstLaunch,
      @required this.seen,
      this.lastConfigFetchedAt,
      this.lastConfig})
      : assert(firstLaunch != null),
        assert(seen != null);

  factory _$_DiacData.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacDataFromJson(json);

  @override
  final DateTime firstLaunch;
  @override
  final List<DiacHistory> seen;
  @override
  final DateTime lastConfigFetchedAt;
  @override
  final DiacConfig lastConfig;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiacData(firstLaunch: $firstLaunch, seen: $seen, lastConfigFetchedAt: $lastConfigFetchedAt, lastConfig: $lastConfig)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiacData'))
      ..add(DiagnosticsProperty('firstLaunch', firstLaunch))
      ..add(DiagnosticsProperty('seen', seen))
      ..add(DiagnosticsProperty('lastConfigFetchedAt', lastConfigFetchedAt))
      ..add(DiagnosticsProperty('lastConfig', lastConfig));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacData &&
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
      const DeepCollectionEquality().hash(firstLaunch) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(lastConfigFetchedAt) ^
      const DeepCollectionEquality().hash(lastConfig);

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
      {@required DateTime firstLaunch,
      @required List<DiacHistory> seen,
      DateTime lastConfigFetchedAt,
      DiacConfig lastConfig}) = _$_DiacData;

  factory _DiacData.fromJson(Map<String, dynamic> json) = _$_DiacData.fromJson;

  @override
  DateTime get firstLaunch;
  @override
  List<DiacHistory> get seen;
  @override
  DateTime get lastConfigFetchedAt;
  @override
  DiacConfig get lastConfig;
  @override
  _$DiacDataCopyWith<_DiacData> get copyWith;
}

DiacHistory _$DiacHistoryFromJson(Map<String, dynamic> json) {
  return _DiacHistory.fromJson(json);
}

class _$DiacHistoryTearOff {
  const _$DiacHistoryTearOff();

  _DiacHistory call({@required String messageUuid, DateTime closedAt}) {
    return _DiacHistory(
      messageUuid: messageUuid,
      closedAt: closedAt,
    );
  }
}

// ignore: unused_element
const $DiacHistory = _$DiacHistoryTearOff();

mixin _$DiacHistory {
  String get messageUuid;
  DateTime get closedAt;

  Map<String, dynamic> toJson();
  $DiacHistoryCopyWith<DiacHistory> get copyWith;
}

abstract class $DiacHistoryCopyWith<$Res> {
  factory $DiacHistoryCopyWith(
          DiacHistory value, $Res Function(DiacHistory) then) =
      _$DiacHistoryCopyWithImpl<$Res>;
  $Res call({String messageUuid, DateTime closedAt});
}

class _$DiacHistoryCopyWithImpl<$Res> implements $DiacHistoryCopyWith<$Res> {
  _$DiacHistoryCopyWithImpl(this._value, this._then);

  final DiacHistory _value;
  // ignore: unused_field
  final $Res Function(DiacHistory) _then;

  @override
  $Res call({
    Object messageUuid = freezed,
    Object closedAt = freezed,
  }) {
    return _then(_value.copyWith(
      messageUuid:
          messageUuid == freezed ? _value.messageUuid : messageUuid as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
    ));
  }
}

abstract class _$DiacHistoryCopyWith<$Res>
    implements $DiacHistoryCopyWith<$Res> {
  factory _$DiacHistoryCopyWith(
          _DiacHistory value, $Res Function(_DiacHistory) then) =
      __$DiacHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String messageUuid, DateTime closedAt});
}

class __$DiacHistoryCopyWithImpl<$Res> extends _$DiacHistoryCopyWithImpl<$Res>
    implements _$DiacHistoryCopyWith<$Res> {
  __$DiacHistoryCopyWithImpl(
      _DiacHistory _value, $Res Function(_DiacHistory) _then)
      : super(_value, (v) => _then(v as _DiacHistory));

  @override
  _DiacHistory get _value => super._value as _DiacHistory;

  @override
  $Res call({
    Object messageUuid = freezed,
    Object closedAt = freezed,
  }) {
    return _then(_DiacHistory(
      messageUuid:
          messageUuid == freezed ? _value.messageUuid : messageUuid as String,
      closedAt: closedAt == freezed ? _value.closedAt : closedAt as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_DiacHistory with DiagnosticableTreeMixin implements _DiacHistory {
  const _$_DiacHistory({@required this.messageUuid, this.closedAt})
      : assert(messageUuid != null);

  factory _$_DiacHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacHistoryFromJson(json);

  @override
  final String messageUuid;
  @override
  final DateTime closedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiacHistory(messageUuid: $messageUuid, closedAt: $closedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiacHistory'))
      ..add(DiagnosticsProperty('messageUuid', messageUuid))
      ..add(DiagnosticsProperty('closedAt', closedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacHistory &&
            (identical(other.messageUuid, messageUuid) ||
                const DeepCollectionEquality()
                    .equals(other.messageUuid, messageUuid)) &&
            (identical(other.closedAt, closedAt) ||
                const DeepCollectionEquality()
                    .equals(other.closedAt, closedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageUuid) ^
      const DeepCollectionEquality().hash(closedAt);

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
      {@required String messageUuid, DateTime closedAt}) = _$_DiacHistory;

  factory _DiacHistory.fromJson(Map<String, dynamic> json) =
      _$_DiacHistory.fromJson;

  @override
  String get messageUuid;
  @override
  DateTime get closedAt;
  @override
  _$DiacHistoryCopyWith<_DiacHistory> get copyWith;
}
