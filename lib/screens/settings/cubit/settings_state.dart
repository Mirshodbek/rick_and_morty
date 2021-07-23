part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initialTheme() = _InitialThemeSettingsState;

  const factory SettingsState.theme({
required final SettingTheme theme,
  }) = _ThemeSettingsState;
}
