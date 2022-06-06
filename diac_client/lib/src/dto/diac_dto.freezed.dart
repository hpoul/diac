// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diac_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiacConfig _$DiacConfigFromJson(Map<String, dynamic> json) {
  return _DiacConfig.fromJson(json);
}

/// @nodoc
mixin _$DiacConfig {
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<DiacMessage> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiacConfigCopyWith<DiacConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiacConfigCopyWith<$Res> {
  factory $DiacConfigCopyWith(
          DiacConfig value, $Res Function(DiacConfig) then) =
      _$DiacConfigCopyWithImpl<$Res>;
  $Res call({DateTime updatedAt, List<DiacMessage> messages});
}

/// @nodoc
class _$DiacConfigCopyWithImpl<$Res> implements $DiacConfigCopyWith<$Res> {
  _$DiacConfigCopyWithImpl(this._value, this._then);

  final DiacConfig _value;
  // ignore: unused_field
  final $Res Function(DiacConfig) _then;

  @override
  $Res call({
    Object? updatedAt = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DiacMessage>,
    ));
  }
}

/// @nodoc
abstract class _$$_DiacConfigCopyWith<$Res>
    implements $DiacConfigCopyWith<$Res> {
  factory _$$_DiacConfigCopyWith(
          _$_DiacConfig value, $Res Function(_$_DiacConfig) then) =
      __$$_DiacConfigCopyWithImpl<$Res>;
  @override
  $Res call({DateTime updatedAt, List<DiacMessage> messages});
}

/// @nodoc
class __$$_DiacConfigCopyWithImpl<$Res> extends _$DiacConfigCopyWithImpl<$Res>
    implements _$$_DiacConfigCopyWith<$Res> {
  __$$_DiacConfigCopyWithImpl(
      _$_DiacConfig _value, $Res Function(_$_DiacConfig) _then)
      : super(_value, (v) => _then(v as _$_DiacConfig));

  @override
  _$_DiacConfig get _value => super._value as _$_DiacConfig;

  @override
  $Res call({
    Object? updatedAt = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_DiacConfig(
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<DiacMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiacConfig implements _DiacConfig {
  const _$_DiacConfig(
      {required this.updatedAt, required final List<DiacMessage> messages})
      : _messages = messages;

  factory _$_DiacConfig.fromJson(Map<String, dynamic> json) =>
      _$$_DiacConfigFromJson(json);

  @override
  final DateTime updatedAt;
  final List<DiacMessage> _messages;
  @override
  List<DiacMessage> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'DiacConfig(updatedAt: $updatedAt, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiacConfig &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_DiacConfigCopyWith<_$_DiacConfig> get copyWith =>
      __$$_DiacConfigCopyWithImpl<_$_DiacConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiacConfigToJson(this);
  }
}

abstract class _DiacConfig implements DiacConfig {
  const factory _DiacConfig(
      {required final DateTime updatedAt,
      required final List<DiacMessage> messages}) = _$_DiacConfig;

  factory _DiacConfig.fromJson(Map<String, dynamic> json) =
      _$_DiacConfig.fromJson;

  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  List<DiacMessage> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DiacConfigCopyWith<_$_DiacConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

DiacMessage _$DiacMessageFromJson(Map<String, dynamic> json) {
  return _DiacMessage.fromJson(json);
}

/// @nodoc
mixin _$DiacMessage {
  String get uuid => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  DateTime? get dateStart => throw _privateConstructorUsedError;
  DateTime? get dateEnd => throw _privateConstructorUsedError;
  String? get expression => throw _privateConstructorUsedError;
  List<DiacMessageAction> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiacMessageCopyWith<DiacMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiacMessageCopyWith<$Res> {
  factory $DiacMessageCopyWith(
          DiacMessage value, $Res Function(DiacMessage) then) =
      _$DiacMessageCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String body,
      String key,
      DateTime? dateStart,
      DateTime? dateEnd,
      String? expression,
      List<DiacMessageAction> actions});
}

/// @nodoc
class _$DiacMessageCopyWithImpl<$Res> implements $DiacMessageCopyWith<$Res> {
  _$DiacMessageCopyWithImpl(this._value, this._then);

  final DiacMessage _value;
  // ignore: unused_field
  final $Res Function(DiacMessage) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? body = freezed,
    Object? key = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? expression = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DiacMessageAction>,
    ));
  }
}

/// @nodoc
abstract class _$$_DiacMessageCopyWith<$Res>
    implements $DiacMessageCopyWith<$Res> {
  factory _$$_DiacMessageCopyWith(
          _$_DiacMessage value, $Res Function(_$_DiacMessage) then) =
      __$$_DiacMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String body,
      String key,
      DateTime? dateStart,
      DateTime? dateEnd,
      String? expression,
      List<DiacMessageAction> actions});
}

/// @nodoc
class __$$_DiacMessageCopyWithImpl<$Res> extends _$DiacMessageCopyWithImpl<$Res>
    implements _$$_DiacMessageCopyWith<$Res> {
  __$$_DiacMessageCopyWithImpl(
      _$_DiacMessage _value, $Res Function(_$_DiacMessage) _then)
      : super(_value, (v) => _then(v as _$_DiacMessage));

  @override
  _$_DiacMessage get _value => super._value as _$_DiacMessage;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? body = freezed,
    Object? key = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? expression = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$_DiacMessage(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: actions == freezed
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DiacMessageAction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiacMessage implements _DiacMessage {
  const _$_DiacMessage(
      {required this.uuid,
      required this.body,
      required this.key,
      this.dateStart,
      this.dateEnd,
      this.expression,
      required final List<DiacMessageAction> actions})
      : _actions = actions;

  factory _$_DiacMessage.fromJson(Map<String, dynamic> json) =>
      _$$_DiacMessageFromJson(json);

  @override
  final String uuid;
  @override
  final String body;
  @override
  final String key;
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;
  @override
  final String? expression;
  final List<DiacMessageAction> _actions;
  @override
  List<DiacMessageAction> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'DiacMessage(uuid: $uuid, body: $body, key: $key, dateStart: $dateStart, dateEnd: $dateEnd, expression: $expression, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiacMessage &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.dateStart, dateStart) &&
            const DeepCollectionEquality().equals(other.dateEnd, dateEnd) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(dateStart),
      const DeepCollectionEquality().hash(dateEnd),
      const DeepCollectionEquality().hash(expression),
      const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  _$$_DiacMessageCopyWith<_$_DiacMessage> get copyWith =>
      __$$_DiacMessageCopyWithImpl<_$_DiacMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiacMessageToJson(this);
  }
}

abstract class _DiacMessage implements DiacMessage {
  const factory _DiacMessage(
      {required final String uuid,
      required final String body,
      required final String key,
      final DateTime? dateStart,
      final DateTime? dateEnd,
      final String? expression,
      required final List<DiacMessageAction> actions}) = _$_DiacMessage;

  factory _DiacMessage.fromJson(Map<String, dynamic> json) =
      _$_DiacMessage.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  DateTime? get dateStart => throw _privateConstructorUsedError;
  @override
  DateTime? get dateEnd => throw _privateConstructorUsedError;
  @override
  String? get expression => throw _privateConstructorUsedError;
  @override
  List<DiacMessageAction> get actions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DiacMessageCopyWith<_$_DiacMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

DiacMessageAction _$DiacMessageActionFromJson(Map<String, dynamic> json) {
  return _DiacMessageAction.fromJson(json);
}

/// @nodoc
mixin _$DiacMessageAction {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Expression which will be evaluated, if url is null.
  String? get expression => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiacMessageActionCopyWith<DiacMessageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiacMessageActionCopyWith<$Res> {
  factory $DiacMessageActionCopyWith(
          DiacMessageAction value, $Res Function(DiacMessageAction) then) =
      _$DiacMessageActionCopyWithImpl<$Res>;
  $Res call({String key, String label, String? url, String? expression});
}

/// @nodoc
class _$DiacMessageActionCopyWithImpl<$Res>
    implements $DiacMessageActionCopyWith<$Res> {
  _$DiacMessageActionCopyWithImpl(this._value, this._then);

  final DiacMessageAction _value;
  // ignore: unused_field
  final $Res Function(DiacMessageAction) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? label = freezed,
    Object? url = freezed,
    Object? expression = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DiacMessageActionCopyWith<$Res>
    implements $DiacMessageActionCopyWith<$Res> {
  factory _$$_DiacMessageActionCopyWith(_$_DiacMessageAction value,
          $Res Function(_$_DiacMessageAction) then) =
      __$$_DiacMessageActionCopyWithImpl<$Res>;
  @override
  $Res call({String key, String label, String? url, String? expression});
}

/// @nodoc
class __$$_DiacMessageActionCopyWithImpl<$Res>
    extends _$DiacMessageActionCopyWithImpl<$Res>
    implements _$$_DiacMessageActionCopyWith<$Res> {
  __$$_DiacMessageActionCopyWithImpl(
      _$_DiacMessageAction _value, $Res Function(_$_DiacMessageAction) _then)
      : super(_value, (v) => _then(v as _$_DiacMessageAction));

  @override
  _$_DiacMessageAction get _value => super._value as _$_DiacMessageAction;

  @override
  $Res call({
    Object? key = freezed,
    Object? label = freezed,
    Object? url = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$_DiacMessageAction(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiacMessageAction implements _DiacMessageAction {
  const _$_DiacMessageAction(
      {required this.key, required this.label, this.url, this.expression});

  factory _$_DiacMessageAction.fromJson(Map<String, dynamic> json) =>
      _$$_DiacMessageActionFromJson(json);

  @override
  final String key;
  @override
  final String label;
  @override
  final String? url;

  /// Expression which will be evaluated, if url is null.
  @override
  final String? expression;

  @override
  String toString() {
    return 'DiacMessageAction(key: $key, label: $label, url: $url, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiacMessageAction &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$_DiacMessageActionCopyWith<_$_DiacMessageAction> get copyWith =>
      __$$_DiacMessageActionCopyWithImpl<_$_DiacMessageAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiacMessageActionToJson(this);
  }
}

abstract class _DiacMessageAction implements DiacMessageAction {
  const factory _DiacMessageAction(
      {required final String key,
      required final String label,
      final String? url,
      final String? expression}) = _$_DiacMessageAction;

  factory _DiacMessageAction.fromJson(Map<String, dynamic> json) =
      _$_DiacMessageAction.fromJson;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override

  /// Expression which will be evaluated, if url is null.
  String? get expression => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DiacMessageActionCopyWith<_$_DiacMessageAction> get copyWith =>
      throw _privateConstructorUsedError;
}
