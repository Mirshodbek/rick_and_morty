// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PersonagesEventTearOff {
  const _$PersonagesEventTearOff();

  _InitialPersonagesEvent initial() {
    return const _InitialPersonagesEvent();
  }

  _SelectedViewPersonagesEvent selectedView({required bool? isGrid}) {
    return _SelectedViewPersonagesEvent(
      isGrid: isGrid,
    );
  }
}

/// @nodoc
const $PersonagesEvent = _$PersonagesEventTearOff();

/// @nodoc
mixin _$PersonagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isGrid) selectedView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isGrid)? selectedView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonagesEvent value) initial,
    required TResult Function(_SelectedViewPersonagesEvent value) selectedView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonagesEvent value)? initial,
    TResult Function(_SelectedViewPersonagesEvent value)? selectedView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonagesEventCopyWith<$Res> {
  factory $PersonagesEventCopyWith(
          PersonagesEvent value, $Res Function(PersonagesEvent) then) =
      _$PersonagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonagesEventCopyWithImpl<$Res>
    implements $PersonagesEventCopyWith<$Res> {
  _$PersonagesEventCopyWithImpl(this._value, this._then);

  final PersonagesEvent _value;
  // ignore: unused_field
  final $Res Function(PersonagesEvent) _then;
}

/// @nodoc
abstract class _$InitialPersonagesEventCopyWith<$Res> {
  factory _$InitialPersonagesEventCopyWith(_InitialPersonagesEvent value,
          $Res Function(_InitialPersonagesEvent) then) =
      __$InitialPersonagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPersonagesEventCopyWithImpl<$Res>
    extends _$PersonagesEventCopyWithImpl<$Res>
    implements _$InitialPersonagesEventCopyWith<$Res> {
  __$InitialPersonagesEventCopyWithImpl(_InitialPersonagesEvent _value,
      $Res Function(_InitialPersonagesEvent) _then)
      : super(_value, (v) => _then(v as _InitialPersonagesEvent));

  @override
  _InitialPersonagesEvent get _value => super._value as _InitialPersonagesEvent;
}

/// @nodoc

class _$_InitialPersonagesEvent implements _InitialPersonagesEvent {
  const _$_InitialPersonagesEvent();

  @override
  String toString() {
    return 'PersonagesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialPersonagesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isGrid) selectedView,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isGrid)? selectedView,
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
    required TResult Function(_InitialPersonagesEvent value) initial,
    required TResult Function(_SelectedViewPersonagesEvent value) selectedView,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonagesEvent value)? initial,
    TResult Function(_SelectedViewPersonagesEvent value)? selectedView,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPersonagesEvent implements PersonagesEvent {
  const factory _InitialPersonagesEvent() = _$_InitialPersonagesEvent;
}

/// @nodoc
abstract class _$SelectedViewPersonagesEventCopyWith<$Res> {
  factory _$SelectedViewPersonagesEventCopyWith(
          _SelectedViewPersonagesEvent value,
          $Res Function(_SelectedViewPersonagesEvent) then) =
      __$SelectedViewPersonagesEventCopyWithImpl<$Res>;
  $Res call({bool? isGrid});
}

/// @nodoc
class __$SelectedViewPersonagesEventCopyWithImpl<$Res>
    extends _$PersonagesEventCopyWithImpl<$Res>
    implements _$SelectedViewPersonagesEventCopyWith<$Res> {
  __$SelectedViewPersonagesEventCopyWithImpl(
      _SelectedViewPersonagesEvent _value,
      $Res Function(_SelectedViewPersonagesEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewPersonagesEvent));

  @override
  _SelectedViewPersonagesEvent get _value =>
      super._value as _SelectedViewPersonagesEvent;

  @override
  $Res call({
    Object? isGrid = freezed,
  }) {
    return _then(_SelectedViewPersonagesEvent(
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SelectedViewPersonagesEvent implements _SelectedViewPersonagesEvent {
  const _$_SelectedViewPersonagesEvent({required this.isGrid});

  @override
  final bool? isGrid;

  @override
  String toString() {
    return 'PersonagesEvent.selectedView(isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewPersonagesEvent &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewPersonagesEventCopyWith<_SelectedViewPersonagesEvent>
      get copyWith => __$SelectedViewPersonagesEventCopyWithImpl<
          _SelectedViewPersonagesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isGrid) selectedView,
  }) {
    return selectedView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isGrid)? selectedView,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPersonagesEvent value) initial,
    required TResult Function(_SelectedViewPersonagesEvent value) selectedView,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPersonagesEvent value)? initial,
    TResult Function(_SelectedViewPersonagesEvent value)? selectedView,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewPersonagesEvent implements PersonagesEvent {
  const factory _SelectedViewPersonagesEvent({required bool? isGrid}) =
      _$_SelectedViewPersonagesEvent;

  bool? get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedViewPersonagesEventCopyWith<_SelectedViewPersonagesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PersonagesStateTearOff {
  const _$PersonagesStateTearOff();

  _DataPersonagesState data(
      {required List<Personage>? characterList, required bool? isGrid}) {
    return _DataPersonagesState(
      characterList: characterList,
      isGrid: isGrid,
    );
  }

  _InitialPersonagesState initial() {
    return const _InitialPersonagesState();
  }

  _LoadingPersonagesState loading() {
    return const _LoadingPersonagesState();
  }
}

/// @nodoc
const $PersonagesState = _$PersonagesStateTearOff();

/// @nodoc
mixin _$PersonagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Personage>? characterList, bool? isGrid)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Personage>? characterList, bool? isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonagesState value) data,
    required TResult Function(_InitialPersonagesState value) initial,
    required TResult Function(_LoadingPersonagesState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonagesState value)? data,
    TResult Function(_InitialPersonagesState value)? initial,
    TResult Function(_LoadingPersonagesState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonagesStateCopyWith<$Res> {
  factory $PersonagesStateCopyWith(
          PersonagesState value, $Res Function(PersonagesState) then) =
      _$PersonagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonagesStateCopyWithImpl<$Res>
    implements $PersonagesStateCopyWith<$Res> {
  _$PersonagesStateCopyWithImpl(this._value, this._then);

  final PersonagesState _value;
  // ignore: unused_field
  final $Res Function(PersonagesState) _then;
}

/// @nodoc
abstract class _$DataPersonagesStateCopyWith<$Res> {
  factory _$DataPersonagesStateCopyWith(_DataPersonagesState value,
          $Res Function(_DataPersonagesState) then) =
      __$DataPersonagesStateCopyWithImpl<$Res>;
  $Res call({List<Personage>? characterList, bool? isGrid});
}

/// @nodoc
class __$DataPersonagesStateCopyWithImpl<$Res>
    extends _$PersonagesStateCopyWithImpl<$Res>
    implements _$DataPersonagesStateCopyWith<$Res> {
  __$DataPersonagesStateCopyWithImpl(
      _DataPersonagesState _value, $Res Function(_DataPersonagesState) _then)
      : super(_value, (v) => _then(v as _DataPersonagesState));

  @override
  _DataPersonagesState get _value => super._value as _DataPersonagesState;

  @override
  $Res call({
    Object? characterList = freezed,
    Object? isGrid = freezed,
  }) {
    return _then(_DataPersonagesState(
      characterList: characterList == freezed
          ? _value.characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<Personage>?,
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_DataPersonagesState implements _DataPersonagesState {
  const _$_DataPersonagesState(
      {required this.characterList, required this.isGrid});

  @override
  final List<Personage>? characterList;
  @override
  final bool? isGrid;

  @override
  String toString() {
    return 'PersonagesState.data(characterList: $characterList, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataPersonagesState &&
            (identical(other.characterList, characterList) ||
                const DeepCollectionEquality()
                    .equals(other.characterList, characterList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(characterList) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$DataPersonagesStateCopyWith<_DataPersonagesState> get copyWith =>
      __$DataPersonagesStateCopyWithImpl<_DataPersonagesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Personage>? characterList, bool? isGrid)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(characterList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Personage>? characterList, bool? isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(characterList, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataPersonagesState value) data,
    required TResult Function(_InitialPersonagesState value) initial,
    required TResult Function(_LoadingPersonagesState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonagesState value)? data,
    TResult Function(_InitialPersonagesState value)? initial,
    TResult Function(_LoadingPersonagesState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataPersonagesState implements PersonagesState {
  const factory _DataPersonagesState(
      {required List<Personage>? characterList,
      required bool? isGrid}) = _$_DataPersonagesState;

  List<Personage>? get characterList => throw _privateConstructorUsedError;
  bool? get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataPersonagesStateCopyWith<_DataPersonagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialPersonagesStateCopyWith<$Res> {
  factory _$InitialPersonagesStateCopyWith(_InitialPersonagesState value,
          $Res Function(_InitialPersonagesState) then) =
      __$InitialPersonagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialPersonagesStateCopyWithImpl<$Res>
    extends _$PersonagesStateCopyWithImpl<$Res>
    implements _$InitialPersonagesStateCopyWith<$Res> {
  __$InitialPersonagesStateCopyWithImpl(_InitialPersonagesState _value,
      $Res Function(_InitialPersonagesState) _then)
      : super(_value, (v) => _then(v as _InitialPersonagesState));

  @override
  _InitialPersonagesState get _value => super._value as _InitialPersonagesState;
}

/// @nodoc

class _$_InitialPersonagesState implements _InitialPersonagesState {
  const _$_InitialPersonagesState();

  @override
  String toString() {
    return 'PersonagesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialPersonagesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Personage>? characterList, bool? isGrid)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Personage>? characterList, bool? isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_DataPersonagesState value) data,
    required TResult Function(_InitialPersonagesState value) initial,
    required TResult Function(_LoadingPersonagesState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonagesState value)? data,
    TResult Function(_InitialPersonagesState value)? initial,
    TResult Function(_LoadingPersonagesState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPersonagesState implements PersonagesState {
  const factory _InitialPersonagesState() = _$_InitialPersonagesState;
}

/// @nodoc
abstract class _$LoadingPersonagesStateCopyWith<$Res> {
  factory _$LoadingPersonagesStateCopyWith(_LoadingPersonagesState value,
          $Res Function(_LoadingPersonagesState) then) =
      __$LoadingPersonagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingPersonagesStateCopyWithImpl<$Res>
    extends _$PersonagesStateCopyWithImpl<$Res>
    implements _$LoadingPersonagesStateCopyWith<$Res> {
  __$LoadingPersonagesStateCopyWithImpl(_LoadingPersonagesState _value,
      $Res Function(_LoadingPersonagesState) _then)
      : super(_value, (v) => _then(v as _LoadingPersonagesState));

  @override
  _LoadingPersonagesState get _value => super._value as _LoadingPersonagesState;
}

/// @nodoc

class _$_LoadingPersonagesState implements _LoadingPersonagesState {
  const _$_LoadingPersonagesState();

  @override
  String toString() {
    return 'PersonagesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingPersonagesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Personage>? characterList, bool? isGrid)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Personage>? characterList, bool? isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_DataPersonagesState value) data,
    required TResult Function(_InitialPersonagesState value) initial,
    required TResult Function(_LoadingPersonagesState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataPersonagesState value)? data,
    TResult Function(_InitialPersonagesState value)? initial,
    TResult Function(_LoadingPersonagesState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPersonagesState implements PersonagesState {
  const factory _LoadingPersonagesState() = _$_LoadingPersonagesState;
}
