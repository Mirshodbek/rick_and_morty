import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/exports.dart';
part 'settings_cubit.freezed.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  late SettingTheme theme;
  late Color blue800AndWhite;
  late Color greenAndBlue400;
  late Color blue600AndWhite;
  late Color blue600AndWhite200;
  late Color whiteAndBlue800;
  late Color whiteAndWhite400;
  late Color whiteAndGrey200;

  SettingsCubit() : super(SettingsState.initialTheme()) {
    _init();
  }

  void _init()  {
    theme = SettingTheme.switchOn;
    _changeColor();
    _updateTheme();
  }

  void changeTheme(SettingTheme theme)  {
    this.theme = theme;
    _changeColor();
  }

  void _changeColor() {
    switch (theme) {
      case SettingTheme.switchOn:
        _colors(AppColor.blue800, AppColor.blue600, AppColor.blue600,
            AppColor.white, AppColor.white, AppColor.green, AppColor.white);
        break;
      case SettingTheme.switchOff:
        _colors(
            AppColor.white,
            AppColor.white,
            AppColor.white200,
            AppColor.blue800,
            AppColor.white400,
            AppColor.blue400,
            AppColor.grey200);
        break;
      case SettingTheme.defaultTheme:
        defaultTheme();
        break;
      case SettingTheme.energySaving:
        // TODO: Handle this case.
        break;
    }
  }

  void defaultTheme() {
    final Brightness currentBrightness = AppColor.currentSystemBrightness;
    currentBrightness == Brightness.light
        ? _colors(
            AppColor.white,
            AppColor.white,
            AppColor.white200,
            AppColor.blue800,
            AppColor.white400,
            AppColor.blue400,
            AppColor.grey200)
        : _colors(AppColor.blue800, AppColor.blue600, AppColor.blue600,
            AppColor.white, AppColor.white, AppColor.green, AppColor.white);
  }

  void _colors(
    Color one,
    Color two,
    Color three,
    Color four,
    Color five,
    Color six,
    Color seven,
  ) {
    blue800AndWhite = one;
    blue600AndWhite = two;
    blue600AndWhite200 = three;
    whiteAndBlue800 = four;
    whiteAndWhite400 = five;
    greenAndBlue400 = six;
    whiteAndGrey200 = seven;
    _updateTheme();
  }

  void _updateTheme() {
    emit(SettingsState.initialTheme());
    emit(SettingsState.theme(
      theme: theme,
    ));
  }
}
