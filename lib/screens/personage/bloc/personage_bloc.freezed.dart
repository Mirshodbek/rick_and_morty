// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonageEventTearOff {
  const _$PersonageEventTearOff();

  _InitialPersonageEvent initial({required Personage personage}) {
    return _InitialPersonageEvent(
      personage: personage,
    );
  }
}

/// @nodoc
const $PersonageEvent = _$PersonageEventTearOff();

/// @nodoc
mixin _$PersonageEvent {
  Personage get personage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage personage) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage personage)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonageEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonageEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonageEventCopyWith<PersonageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonageEventCopyWith<$Res> {
  factory $PersonageEventCopyWith(
          PersonageEvent value, $Res Function(PersonageEvent) then) =
      _$PersonageEventCopyWithImpl<$Res>;
  $Res call({Personage personage});
}

/// @nodoc
class _$PersonageEventCopyWithImpl<$Res>
    implements $PersonageEventCopyWith<$Res> {
  _$PersonageEventCopyWithImpl(this._value, this._then);

  final PersonageEvent _value;
  // ignore: unused_field
  final $Res Function(PersonageEvent) _then;

  @override
  $Res call({
    Object? personage = freezed,
  }) {
    return _then(_value.copyWith(
      personage: personage == freezed
          ? _value.personage
          : personage // ignore: cast_nullable_to_non_nullable
              as Personage,
    ));
  }
}

/// @nodoc
abstract class _$InitialPersonageEventCopyWith<$Res>
    implements $PersonageEventCopyWith<$Res> {
  factory _$InitialPersonageEventCopyWith(_InitialPersonageEvent value,
          $Res Function(_InitialPersonageEvent) then) =
      __$InitialPersonageEventCopyWithImpl<$Res>;
  @override
  $Res call({Personage personage});
}

/// @nodoc
class __$InitialPersonageEventCopyWithImpl<$Res>
    extends _$PersonageEventCopyWithImpl<$Res>
    implements _$InitialPersonageEventCopyWith<$Res> {
  __$InitialPersonageEventCopyWithImpl(_InitialPersonageEvent _value,
      $Res Function(_InitialPersonageEvent) _then)
      : super(_value, (v) => _then(v as _InitialPersonageEvent));

  @override
  _InitialPersonageEvent get _value => super._value as _InitialPersonageEvent;

  @override
  $Res call({
    Object? personage = freezed,
  }) {
    return _then(_InitialPersonageEvent(
      personage: personage == freezed
          ? _value.personage
          : personage // ignore: cast_nullable_to_non_nullable
              as Personage,
    ));
  }
}

/// @nodoc

class _$_InitialPersonageEvent implements _InitialPersonageEvent {
  const _$_InitialPersonageEvent({required this.personage});

  @override
  final Personage personage;

  @override
  String toString() {
    return 'PersonageEvent.initial(personage: $personage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialPersonageEvent &&
            (identical(other.personage, personage) ||
                const DeepCollectionEquality()
                    .equals(other.personage, personage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personage);

  @JsonKey(ignore: true)
  @override
  _$InitialPersonageEventCopyWith<_InitialPersonageEvent> get copyWith =>
      __$InitialPersonageEventCopyWithImpl<_InitialPersonageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage personage) initial,
  }) {
    return initial(personage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage personage)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(personage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonageEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonageEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPersonageEvent implements PersonageEvent {
  const factory _InitialPersonageEvent({required Personage personage}) =
      _$_InitialPersonageEvent;

  @override
  Personage get personage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialPersonageEventCopyWith<_InitialPersonageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PersonageStateTearOff {
  const _$PersonageStateTearOff();

  _DataPersonageState data({required Personage? character}) {
    return _DataPersonageState(
      character: character,
    );
  }

  _InitialPersonageState initial() {
    return const _InitialPersonageState();
  }

  _LoadingPersonageState loading() {
    return const _LoadingPersonageState();
  }

  _ErrorPersonageState error() {
    return const _ErrorPersonageState();
  }
}

/// @nodoc
const $PersonageState = _$PersonageStateTearOff();

/// @nodoc
mixin _$PersonageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonageState value) data,
    required TResult Function(_InitialPersonageState value) initial,
    required TResult Function(_LoadingPersonageState value) loading,
    required TResult Function(_ErrorPersonageState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonageState value)? data,
    TResult Function(_InitialPersonageState value)? initial,
    TResult Function(_LoadingPersonageState value)? loading,
    TResult Function(_ErrorPersonageState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonageStateCopyWith<$Res> {
  factory $PersonageStateCopyWith(
          PersonageState value, $Res Function(PersonageState) then) =
      _$PersonageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonageStateCopyWithImpl<$Res>
    implements $PersonageStateCopyWith<$Res> {
  _$PersonageStateCopyWithImpl(this._value, this._then);

  final PersonageState _value;
  // ignore: unused_field
  final $Res Function(PersonageState) _then;
}

/// @nodoc
abstract class _$DataPersonageStateCopyWith<$Res> {
  factory _$DataPersonageStateCopyWith(
          _DataPersonageState value, $Res Function(_DataPersonageState) then) =
      __$DataPersonageStateCopyWithImpl<$Res>;
  $Res call({Personage? character});
}

/// @nodoc
class __$DataPersonageStateCopyWithImpl<$Res>
    extends _$PersonageStateCopyWithImpl<$Res>
    implements _$DataPersonageStateCopyWith<$Res> {
  __$DataPersonageStateCopyWithImpl(
      _DataPersonageState _value, $Res Function(_DataPersonageState) _then)
      : super(_value, (v) => _then(v as _DataPersonageState));

  @override
  _DataPersonageState get _value => super._value as _DataPersonageState;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_DataPersonageState(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Personage?,
    ));
  }
}

/// @nodoc

class _$_DataPersonageState implements _DataPersonageState {
  const _$_DataPersonageState({required this.character});

  @override
  final Personage? character;

  @override
  String toString() {
    return 'PersonageState.data(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataPersonageState &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$DataPersonageStateCopyWith<_DataPersonageState> get copyWith =>
      __$DataPersonageStateCopyWithImpl<_DataPersonageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return data(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonageState value) data,
    required TResult Function(_InitialPersonageState value) initial,
    required TResult Function(_LoadingPersonageState value) loading,
    required TResult Function(_ErrorPersonageState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonageState value)? data,
    TResult Function(_InitialPersonageState value)? initial,
    TResult Function(_LoadingPersonageState value)? loading,
    TResult Function(_ErrorPersonageState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataPersonageState implements PersonageState {
  const factory _DataPersonageState({required Personage? character}) =
      _$_DataPersonageState;

  Personage? get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataPersonageStateCopyWith<_DataPersonageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialPersonageStateCopyWith<$Res> {
  factory _$InitialPersonageStateCopyWith(_InitialPersonageState value,
          $Res Function(_InitialPersonageState) then) =
      __$InitialPersonageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPersonageStateCopyWithImpl<$Res>
    extends _$PersonageStateCopyWithImpl<$Res>
    implements _$InitialPersonageStateCopyWith<$Res> {
  __$InitialPersonageStateCopyWithImpl(_InitialPersonageState _value,
      $Res Function(_InitialPersonageState) _then)
      : super(_value, (v) => _then(v as _InitialPersonageState));

  @override
  _InitialPersonageState get _value => super._value as _InitialPersonageState;
}

/// @nodoc

class _$_InitialPersonageState implements _InitialPersonageState {
  const _$_InitialPersonageState();

  @override
  String toString() {
    return 'PersonageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialPersonageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonageState value) data,
    required TResult Function(_InitialPersonageState value) initial,
    required TResult Function(_LoadingPersonageState value) loading,
    required TResult Function(_ErrorPersonageState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonageState value)? data,
    TResult Function(_InitialPersonageState value)? initial,
    TResult Function(_LoadingPersonageState value)? loading,
    TResult Function(_ErrorPersonageState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPersonageState implements PersonageState {
  const factory _InitialPersonageState() = _$_InitialPersonageState;
}

/// @nodoc
abstract class _$LoadingPersonageStateCopyWith<$Res> {
  factory _$LoadingPersonageStateCopyWith(_LoadingPersonageState value,
          $Res Function(_LoadingPersonageState) then) =
      __$LoadingPersonageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingPersonageStateCopyWithImpl<$Res>
    extends _$PersonageStateCopyWithImpl<$Res>
    implements _$LoadingPersonageStateCopyWith<$Res> {
  __$LoadingPersonageStateCopyWithImpl(_LoadingPersonageState _value,
      $Res Function(_LoadingPersonageState) _then)
      : super(_value, (v) => _then(v as _LoadingPersonageState));

  @override
  _LoadingPersonageState get _value => super._value as _LoadingPersonageState;
}

/// @nodoc

class _$_LoadingPersonageState implements _LoadingPersonageState {
  const _$_LoadingPersonageState();

  @override
  String toString() {
    return 'PersonageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingPersonageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonageState value) data,
    required TResult Function(_InitialPersonageState value) initial,
    required TResult Function(_LoadingPersonageState value) loading,
    required TResult Function(_ErrorPersonageState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonageState value)? data,
    TResult Function(_InitialPersonageState value)? initial,
    TResult Function(_LoadingPersonageState value)? loading,
    TResult Function(_ErrorPersonageState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPersonageState implements PersonageState {
  const factory _LoadingPersonageState() = _$_LoadingPersonageState;
}

/// @nodoc
abstract class _$ErrorPersonageStateCopyWith<$Res> {
  factory _$ErrorPersonageStateCopyWith(_ErrorPersonageState value,
          $Res Function(_ErrorPersonageState) then) =
      __$ErrorPersonageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorPersonageStateCopyWithImpl<$Res>
    extends _$PersonageStateCopyWithImpl<$Res>
    implements _$ErrorPersonageStateCopyWith<$Res> {
  __$ErrorPersonageStateCopyWithImpl(
      _ErrorPersonageState _value, $Res Function(_ErrorPersonageState) _then)
      : super(_value, (v) => _then(v as _ErrorPersonageState));

  @override
  _ErrorPersonageState get _value => super._value as _ErrorPersonageState;
}

/// @nodoc

class _$_ErrorPersonageState implements _ErrorPersonageState {
  const _$_ErrorPersonageState();

  @override
  String toString() {
    return 'PersonageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorPersonageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Personage? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Personage? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonageState value) data,
    required TResult Function(_InitialPersonageState value) initial,
    required TResult Function(_LoadingPersonageState value) loading,
    required TResult Function(_ErrorPersonageState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonageState value)? data,
    TResult Function(_InitialPersonageState value)? initial,
    TResult Function(_LoadingPersonageState value)? loading,
    TResult Function(_ErrorPersonageState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPersonageState implements PersonageState {
  const factory _ErrorPersonageState() = _$_ErrorPersonageState;
}
