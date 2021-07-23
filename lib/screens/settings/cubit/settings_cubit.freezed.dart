// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _InitialThemeSettingsState initialTheme() {
    return const _InitialThemeSettingsState();
  }

  _ThemeSettingsState theme({required SettingTheme theme}) {
    return _ThemeSettingsState(
      theme: theme,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialTheme,
    required TResult Function(SettingTheme theme) theme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialTheme,
    TResult Function(SettingTheme theme)? theme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialThemeSettingsState value) initialTheme,
    required TResult Function(_ThemeSettingsState value) theme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialThemeSettingsState value)? initialTheme,
    TResult Function(_ThemeSettingsState value)? theme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$InitialThemeSettingsStateCopyWith<$Res> {
  factory _$InitialThemeSettingsStateCopyWith(_InitialThemeSettingsState value,
          $Res Function(_InitialThemeSettingsState) then) =
      __$InitialThemeSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialThemeSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$InitialThemeSettingsStateCopyWith<$Res> {
  __$InitialThemeSettingsStateCopyWithImpl(_InitialThemeSettingsState _value,
      $Res Function(_InitialThemeSettingsState) _then)
      : super(_value, (v) => _then(v as _InitialThemeSettingsState));

  @override
  _InitialThemeSettingsState get _value =>
      super._value as _InitialThemeSettingsState;
}

/// @nodoc

class _$_InitialThemeSettingsState implements _InitialThemeSettingsState {
  const _$_InitialThemeSettingsState();

  @override
  String toString() {
    return 'SettingsState.initialTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialThemeSettingsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialTheme,
    required TResult Function(SettingTheme theme) theme,
  }) {
    return initialTheme();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialTheme,
    TResult Function(SettingTheme theme)? theme,
    required TResult orElse(),
  }) {
    if (initialTheme != null) {
      return initialTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialThemeSettingsState value) initialTheme,
    required TResult Function(_ThemeSettingsState value) theme,
  }) {
    return initialTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialThemeSettingsState value)? initialTheme,
    TResult Function(_ThemeSettingsState value)? theme,
    required TResult orElse(),
  }) {
    if (initialTheme != null) {
      return initialTheme(this);
    }
    return orElse();
  }
}

abstract class _InitialThemeSettingsState implements SettingsState {
  const factory _InitialThemeSettingsState() = _$_InitialThemeSettingsState;
}

/// @nodoc
abstract class _$ThemeSettingsStateCopyWith<$Res> {
  factory _$ThemeSettingsStateCopyWith(
          _ThemeSettingsState value, $Res Function(_ThemeSettingsState) then) =
      __$ThemeSettingsStateCopyWithImpl<$Res>;
  $Res call({SettingTheme theme});
}

/// @nodoc
class __$ThemeSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$ThemeSettingsStateCopyWith<$Res> {
  __$ThemeSettingsStateCopyWithImpl(
      _ThemeSettingsState _value, $Res Function(_ThemeSettingsState) _then)
      : super(_value, (v) => _then(v as _ThemeSettingsState));

  @override
  _ThemeSettingsState get _value => super._value as _ThemeSettingsState;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_ThemeSettingsState(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as SettingTheme,
    ));
  }
}

/// @nodoc

class _$_ThemeSettingsState implements _ThemeSettingsState {
  const _$_ThemeSettingsState({required this.theme});

  @override
  final SettingTheme theme;

  @override
  String toString() {
    return 'SettingsState.theme(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeSettingsState &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(theme);

  @JsonKey(ignore: true)
  @override
  _$ThemeSettingsStateCopyWith<_ThemeSettingsState> get copyWith =>
      __$ThemeSettingsStateCopyWithImpl<_ThemeSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialTheme,
    required TResult Function(SettingTheme theme) theme,
  }) {
    return theme(this.theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialTheme,
    TResult Function(SettingTheme theme)? theme,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this.theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialThemeSettingsState value) initialTheme,
    required TResult Function(_ThemeSettingsState value) theme,
  }) {
    return theme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialThemeSettingsState value)? initialTheme,
    TResult Function(_ThemeSettingsState value)? theme,
    required TResult orElse(),
  }) {
    if (theme != null) {
      return theme(this);
    }
    return orElse();
  }
}

abstract class _ThemeSettingsState implements SettingsState {
  const factory _ThemeSettingsState({required SettingTheme theme}) =
      _$_ThemeSettingsState;

  SettingTheme get theme => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ThemeSettingsStateCopyWith<_ThemeSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
