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

  _DiacConfig call({@required List<DiacMessage> messages}) {
    return _DiacConfig(
      messages: messages,
    );
  }
}

// ignore: unused_element
const $DiacConfig = _$DiacConfigTearOff();

mixin _$DiacConfig {
  List<DiacMessage> get messages;

  Map<String, dynamic> toJson();
  $DiacConfigCopyWith<DiacConfig> get copyWith;
}

abstract class $DiacConfigCopyWith<$Res> {
  factory $DiacConfigCopyWith(
          DiacConfig value, $Res Function(DiacConfig) then) =
      _$DiacConfigCopyWithImpl<$Res>;
  $Res call({List<DiacMessage> messages});
}

class _$DiacConfigCopyWithImpl<$Res> implements $DiacConfigCopyWith<$Res> {
  _$DiacConfigCopyWithImpl(this._value, this._then);

  final DiacConfig _value;
  // ignore: unused_field
  final $Res Function(DiacConfig) _then;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      messages:
          messages == freezed ? _value.messages : messages as List<DiacMessage>,
    ));
  }
}

abstract class _$DiacConfigCopyWith<$Res> implements $DiacConfigCopyWith<$Res> {
  factory _$DiacConfigCopyWith(
          _DiacConfig value, $Res Function(_DiacConfig) then) =
      __$DiacConfigCopyWithImpl<$Res>;
  @override
  $Res call({List<DiacMessage> messages});
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
    Object messages = freezed,
  }) {
    return _then(_DiacConfig(
      messages:
          messages == freezed ? _value.messages : messages as List<DiacMessage>,
    ));
  }
}

@JsonSerializable()
class _$_DiacConfig implements _DiacConfig {
  const _$_DiacConfig({@required this.messages}) : assert(messages != null);

  factory _$_DiacConfig.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacConfigFromJson(json);

  @override
  final List<DiacMessage> messages;

  @override
  String toString() {
    return 'DiacConfig(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacConfig &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @override
  _$DiacConfigCopyWith<_DiacConfig> get copyWith =>
      __$DiacConfigCopyWithImpl<_DiacConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacConfigToJson(this);
  }
}

abstract class _DiacConfig implements DiacConfig {
  const factory _DiacConfig({@required List<DiacMessage> messages}) =
      _$_DiacConfig;

  factory _DiacConfig.fromJson(Map<String, dynamic> json) =
      _$_DiacConfig.fromJson;

  @override
  List<DiacMessage> get messages;
  @override
  _$DiacConfigCopyWith<_DiacConfig> get copyWith;
}

DiacMessage _$DiacMessageFromJson(Map<String, dynamic> json) {
  return _DiacMessage.fromJson(json);
}

class _$DiacMessageTearOff {
  const _$DiacMessageTearOff();

  _DiacMessage call(
      {@required String uuid,
      @required String body,
      @required String sku,
      DateTime dateStart,
      DateTime dateEnd,
      String expression,
      @required List<DiacMessageAction> actions}) {
    return _DiacMessage(
      uuid: uuid,
      body: body,
      sku: sku,
      dateStart: dateStart,
      dateEnd: dateEnd,
      expression: expression,
      actions: actions,
    );
  }
}

// ignore: unused_element
const $DiacMessage = _$DiacMessageTearOff();

mixin _$DiacMessage {
  String get uuid;
  String get body;
  String get sku;
  DateTime get dateStart;
  DateTime get dateEnd;
  String get expression;
  List<DiacMessageAction> get actions;

  Map<String, dynamic> toJson();
  $DiacMessageCopyWith<DiacMessage> get copyWith;
}

abstract class $DiacMessageCopyWith<$Res> {
  factory $DiacMessageCopyWith(
          DiacMessage value, $Res Function(DiacMessage) then) =
      _$DiacMessageCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String body,
      String sku,
      DateTime dateStart,
      DateTime dateEnd,
      String expression,
      List<DiacMessageAction> actions});
}

class _$DiacMessageCopyWithImpl<$Res> implements $DiacMessageCopyWith<$Res> {
  _$DiacMessageCopyWithImpl(this._value, this._then);

  final DiacMessage _value;
  // ignore: unused_field
  final $Res Function(DiacMessage) _then;

  @override
  $Res call({
    Object uuid = freezed,
    Object body = freezed,
    Object sku = freezed,
    Object dateStart = freezed,
    Object dateEnd = freezed,
    Object expression = freezed,
    Object actions = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      body: body == freezed ? _value.body : body as String,
      sku: sku == freezed ? _value.sku : sku as String,
      dateStart:
          dateStart == freezed ? _value.dateStart : dateStart as DateTime,
      dateEnd: dateEnd == freezed ? _value.dateEnd : dateEnd as DateTime,
      expression:
          expression == freezed ? _value.expression : expression as String,
      actions: actions == freezed
          ? _value.actions
          : actions as List<DiacMessageAction>,
    ));
  }
}

abstract class _$DiacMessageCopyWith<$Res>
    implements $DiacMessageCopyWith<$Res> {
  factory _$DiacMessageCopyWith(
          _DiacMessage value, $Res Function(_DiacMessage) then) =
      __$DiacMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String body,
      String sku,
      DateTime dateStart,
      DateTime dateEnd,
      String expression,
      List<DiacMessageAction> actions});
}

class __$DiacMessageCopyWithImpl<$Res> extends _$DiacMessageCopyWithImpl<$Res>
    implements _$DiacMessageCopyWith<$Res> {
  __$DiacMessageCopyWithImpl(
      _DiacMessage _value, $Res Function(_DiacMessage) _then)
      : super(_value, (v) => _then(v as _DiacMessage));

  @override
  _DiacMessage get _value => super._value as _DiacMessage;

  @override
  $Res call({
    Object uuid = freezed,
    Object body = freezed,
    Object sku = freezed,
    Object dateStart = freezed,
    Object dateEnd = freezed,
    Object expression = freezed,
    Object actions = freezed,
  }) {
    return _then(_DiacMessage(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      body: body == freezed ? _value.body : body as String,
      sku: sku == freezed ? _value.sku : sku as String,
      dateStart:
          dateStart == freezed ? _value.dateStart : dateStart as DateTime,
      dateEnd: dateEnd == freezed ? _value.dateEnd : dateEnd as DateTime,
      expression:
          expression == freezed ? _value.expression : expression as String,
      actions: actions == freezed
          ? _value.actions
          : actions as List<DiacMessageAction>,
    ));
  }
}

@JsonSerializable()
class _$_DiacMessage implements _DiacMessage {
  const _$_DiacMessage(
      {@required this.uuid,
      @required this.body,
      @required this.sku,
      this.dateStart,
      this.dateEnd,
      this.expression,
      @required this.actions})
      : assert(uuid != null),
        assert(body != null),
        assert(sku != null),
        assert(actions != null);

  factory _$_DiacMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacMessageFromJson(json);

  @override
  final String uuid;
  @override
  final String body;
  @override
  final String sku;
  @override
  final DateTime dateStart;
  @override
  final DateTime dateEnd;
  @override
  final String expression;
  @override
  final List<DiacMessageAction> actions;

  @override
  String toString() {
    return 'DiacMessage(uuid: $uuid, body: $body, sku: $sku, dateStart: $dateStart, dateEnd: $dateEnd, expression: $expression, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacMessage &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.dateStart, dateStart) ||
                const DeepCollectionEquality()
                    .equals(other.dateStart, dateStart)) &&
            (identical(other.dateEnd, dateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.dateEnd, dateEnd)) &&
            (identical(other.expression, expression) ||
                const DeepCollectionEquality()
                    .equals(other.expression, expression)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality().equals(other.actions, actions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(dateStart) ^
      const DeepCollectionEquality().hash(dateEnd) ^
      const DeepCollectionEquality().hash(expression) ^
      const DeepCollectionEquality().hash(actions);

  @override
  _$DiacMessageCopyWith<_DiacMessage> get copyWith =>
      __$DiacMessageCopyWithImpl<_DiacMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacMessageToJson(this);
  }
}

abstract class _DiacMessage implements DiacMessage {
  const factory _DiacMessage(
      {@required String uuid,
      @required String body,
      @required String sku,
      DateTime dateStart,
      DateTime dateEnd,
      String expression,
      @required List<DiacMessageAction> actions}) = _$_DiacMessage;

  factory _DiacMessage.fromJson(Map<String, dynamic> json) =
      _$_DiacMessage.fromJson;

  @override
  String get uuid;
  @override
  String get body;
  @override
  String get sku;
  @override
  DateTime get dateStart;
  @override
  DateTime get dateEnd;
  @override
  String get expression;
  @override
  List<DiacMessageAction> get actions;
  @override
  _$DiacMessageCopyWith<_DiacMessage> get copyWith;
}

DiacMessageAction _$DiacMessageActionFromJson(Map<String, dynamic> json) {
  return _DiacMessageAction.fromJson(json);
}

class _$DiacMessageActionTearOff {
  const _$DiacMessageActionTearOff();

  _DiacMessageAction call({@required String label, String url}) {
    return _DiacMessageAction(
      label: label,
      url: url,
    );
  }
}

// ignore: unused_element
const $DiacMessageAction = _$DiacMessageActionTearOff();

mixin _$DiacMessageAction {
  String get label;
  String get url;

  Map<String, dynamic> toJson();
  $DiacMessageActionCopyWith<DiacMessageAction> get copyWith;
}

abstract class $DiacMessageActionCopyWith<$Res> {
  factory $DiacMessageActionCopyWith(
          DiacMessageAction value, $Res Function(DiacMessageAction) then) =
      _$DiacMessageActionCopyWithImpl<$Res>;
  $Res call({String label, String url});
}

class _$DiacMessageActionCopyWithImpl<$Res>
    implements $DiacMessageActionCopyWith<$Res> {
  _$DiacMessageActionCopyWithImpl(this._value, this._then);

  final DiacMessageAction _value;
  // ignore: unused_field
  final $Res Function(DiacMessageAction) _then;

  @override
  $Res call({
    Object label = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$DiacMessageActionCopyWith<$Res>
    implements $DiacMessageActionCopyWith<$Res> {
  factory _$DiacMessageActionCopyWith(
          _DiacMessageAction value, $Res Function(_DiacMessageAction) then) =
      __$DiacMessageActionCopyWithImpl<$Res>;
  @override
  $Res call({String label, String url});
}

class __$DiacMessageActionCopyWithImpl<$Res>
    extends _$DiacMessageActionCopyWithImpl<$Res>
    implements _$DiacMessageActionCopyWith<$Res> {
  __$DiacMessageActionCopyWithImpl(
      _DiacMessageAction _value, $Res Function(_DiacMessageAction) _then)
      : super(_value, (v) => _then(v as _DiacMessageAction));

  @override
  _DiacMessageAction get _value => super._value as _DiacMessageAction;

  @override
  $Res call({
    Object label = freezed,
    Object url = freezed,
  }) {
    return _then(_DiacMessageAction(
      label: label == freezed ? _value.label : label as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_DiacMessageAction implements _DiacMessageAction {
  const _$_DiacMessageAction({@required this.label, this.url})
      : assert(label != null);

  factory _$_DiacMessageAction.fromJson(Map<String, dynamic> json) =>
      _$_$_DiacMessageActionFromJson(json);

  @override
  final String label;
  @override
  final String url;

  @override
  String toString() {
    return 'DiacMessageAction(label: $label, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiacMessageAction &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$DiacMessageActionCopyWith<_DiacMessageAction> get copyWith =>
      __$DiacMessageActionCopyWithImpl<_DiacMessageAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiacMessageActionToJson(this);
  }
}

abstract class _DiacMessageAction implements DiacMessageAction {
  const factory _DiacMessageAction({@required String label, String url}) =
      _$_DiacMessageAction;

  factory _DiacMessageAction.fromJson(Map<String, dynamic> json) =
      _$_DiacMessageAction.fromJson;

  @override
  String get label;
  @override
  String get url;
  @override
  _$DiacMessageActionCopyWith<_DiacMessageAction> get copyWith;
}
