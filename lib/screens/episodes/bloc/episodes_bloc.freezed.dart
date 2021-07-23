// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodesEventTearOff {
  const _$EpisodesEventTearOff();

  _InitialEpisodesEvent initial() {
    return const _InitialEpisodesEvent();
  }
}

/// @nodoc
const $EpisodesEvent = _$EpisodesEventTearOff();

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEpisodesEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodesEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$InitialEpisodesEventCopyWith<$Res> {
  factory _$InitialEpisodesEventCopyWith(_InitialEpisodesEvent value,
          $Res Function(_InitialEpisodesEvent) then) =
      __$InitialEpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEpisodesEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$InitialEpisodesEventCopyWith<$Res> {
  __$InitialEpisodesEventCopyWithImpl(
      _InitialEpisodesEvent _value, $Res Function(_InitialEpisodesEvent) _then)
      : super(_value, (v) => _then(v as _InitialEpisodesEvent));

  @override
  _InitialEpisodesEvent get _value => super._value as _InitialEpisodesEvent;
}

/// @nodoc

class _$_InitialEpisodesEvent implements _InitialEpisodesEvent {
  const _$_InitialEpisodesEvent();

  @override
  String toString() {
    return 'EpisodesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEpisodesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_InitialEpisodesEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodesEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodesEvent implements EpisodesEvent {
  const factory _InitialEpisodesEvent() = _$_InitialEpisodesEvent;
}

/// @nodoc
class _$EpisodesStateTearOff {
  const _$EpisodesStateTearOff();

  _DataEpisodesState data(
      {required List<Episode>? episodesList,
      required List<String>? seasonsList}) {
    return _DataEpisodesState(
      episodesList: episodesList,
      seasonsList: seasonsList,
    );
  }

  _InitialEpisodesState initial() {
    return const _InitialEpisodesState();
  }

  _LoadingEpisodesState loading() {
    return const _LoadingEpisodesState();
  }
}

/// @nodoc
const $EpisodesState = _$EpisodesStateTearOff();

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode>? episodesList, List<String>? seasonsList)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode>? episodesList, List<String>? seasonsList)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class _$DataEpisodesStateCopyWith<$Res> {
  factory _$DataEpisodesStateCopyWith(
          _DataEpisodesState value, $Res Function(_DataEpisodesState) then) =
      __$DataEpisodesStateCopyWithImpl<$Res>;
  $Res call({List<Episode>? episodesList, List<String>? seasonsList});
}

/// @nodoc
class __$DataEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$DataEpisodesStateCopyWith<$Res> {
  __$DataEpisodesStateCopyWithImpl(
      _DataEpisodesState _value, $Res Function(_DataEpisodesState) _then)
      : super(_value, (v) => _then(v as _DataEpisodesState));

  @override
  _DataEpisodesState get _value => super._value as _DataEpisodesState;

  @override
  $Res call({
    Object? episodesList = freezed,
    Object? seasonsList = freezed,
  }) {
    return _then(_DataEpisodesState(
      episodesList: episodesList == freezed
          ? _value.episodesList
          : episodesList // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      seasonsList: seasonsList == freezed
          ? _value.seasonsList
          : seasonsList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_DataEpisodesState implements _DataEpisodesState {
  const _$_DataEpisodesState(
      {required this.episodesList, required this.seasonsList});

  @override
  final List<Episode>? episodesList;
  @override
  final List<String>? seasonsList;

  @override
  String toString() {
    return 'EpisodesState.data(episodesList: $episodesList, seasonsList: $seasonsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataEpisodesState &&
            (identical(other.episodesList, episodesList) ||
                const DeepCollectionEquality()
                    .equals(other.episodesList, episodesList)) &&
            (identical(other.seasonsList, seasonsList) ||
                const DeepCollectionEquality()
                    .equals(other.seasonsList, seasonsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(episodesList) ^
      const DeepCollectionEquality().hash(seasonsList);

  @JsonKey(ignore: true)
  @override
  _$DataEpisodesStateCopyWith<_DataEpisodesState> get copyWith =>
      __$DataEpisodesStateCopyWithImpl<_DataEpisodesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode>? episodesList, List<String>? seasonsList)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(episodesList, seasonsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode>? episodesList, List<String>? seasonsList)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(episodesList, seasonsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataEpisodesState implements EpisodesState {
  const factory _DataEpisodesState(
      {required List<Episode>? episodesList,
      required List<String>? seasonsList}) = _$_DataEpisodesState;

  List<Episode>? get episodesList => throw _privateConstructorUsedError;
  List<String>? get seasonsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataEpisodesStateCopyWith<_DataEpisodesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialEpisodesStateCopyWith<$Res> {
  factory _$InitialEpisodesStateCopyWith(_InitialEpisodesState value,
          $Res Function(_InitialEpisodesState) then) =
      __$InitialEpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$InitialEpisodesStateCopyWith<$Res> {
  __$InitialEpisodesStateCopyWithImpl(
      _InitialEpisodesState _value, $Res Function(_InitialEpisodesState) _then)
      : super(_value, (v) => _then(v as _InitialEpisodesState));

  @override
  _InitialEpisodesState get _value => super._value as _InitialEpisodesState;
}

/// @nodoc

class _$_InitialEpisodesState implements _InitialEpisodesState {
  const _$_InitialEpisodesState();

  @override
  String toString() {
    return 'EpisodesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEpisodesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode>? episodesList, List<String>? seasonsList)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode>? episodesList, List<String>? seasonsList)?
        data,
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
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodesState implements EpisodesState {
  const factory _InitialEpisodesState() = _$_InitialEpisodesState;
}

/// @nodoc
abstract class _$LoadingEpisodesStateCopyWith<$Res> {
  factory _$LoadingEpisodesStateCopyWith(_LoadingEpisodesState value,
          $Res Function(_LoadingEpisodesState) then) =
      __$LoadingEpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$LoadingEpisodesStateCopyWith<$Res> {
  __$LoadingEpisodesStateCopyWithImpl(
      _LoadingEpisodesState _value, $Res Function(_LoadingEpisodesState) _then)
      : super(_value, (v) => _then(v as _LoadingEpisodesState));

  @override
  _LoadingEpisodesState get _value => super._value as _LoadingEpisodesState;
}

/// @nodoc

class _$_LoadingEpisodesState implements _LoadingEpisodesState {
  const _$_LoadingEpisodesState();

  @override
  String toString() {
    return 'EpisodesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingEpisodesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Episode>? episodesList, List<String>? seasonsList)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Episode>? episodesList, List<String>? seasonsList)?
        data,
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
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEpisodesState implements EpisodesState {
  const factory _LoadingEpisodesState() = _$_LoadingEpisodesState;
}
