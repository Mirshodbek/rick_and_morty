import 'package:flutter/material.dart';

enum SettingTheme { switchOn, switchOff, defaultTheme, energySaving }

class RadioState {
  final SettingTheme settingTheme;
  final SettingTheme value;
  final String title;

  RadioState({
    this.settingTheme = SettingTheme.switchOn,
    required this.title,
    required this.value,
  });

  RadioState copyWith({SettingTheme? settingTheme}) {
    return RadioState(
      settingTheme: settingTheme ?? this.settingTheme,
      value: this.value,
      title: this.title,
    );
  }

  static final radioStateList = [
    RadioState(
      value: SettingTheme.switchOff,
      title: "Выключенна",
    ),
    RadioState(
      value: SettingTheme.switchOn,
      title: "Включенна",
    ),
    RadioState(
      value: SettingTheme.defaultTheme,
      title: "Следовать настройкам системы",
    ),
    RadioState(
      value: SettingTheme.energySaving,
      title: "В режиме энергосбережения",
    ),
  ];
}
