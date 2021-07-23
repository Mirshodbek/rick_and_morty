import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/exports.dart';

class AppColor {
  static var black = Color(0xFF000000);
  static var blue600 = Color(0xFF152A3A);
  static var grey = Color(0xFF5B6975);
  static var grey200 = Color(0xFF828282);
  static var blue800 = Color(0xFF0B1E2D);
  static var green = Color(0xFF43D049);
  static var pink = Color(0xFFEB5757);
  static var white = Color(0xFFFFFFFF);
  static var white200 = Color(0xFFF2F2F2);
  static var white400 = Color(0xFFBDBDBD);
  static var blue700 = Color(0xA60B1E2D);
  static var blue400 = Color(0xFF22A2BD);

  static Color blue800AndWhite(BuildContext context) {
    return context.select((SettingsCubit color) => color.blue800AndWhite);
  }

  static Color blue600AndWhite(BuildContext context) {
    return context.select((SettingsCubit color) => color.blue600AndWhite);
  }

  static Color blue600AndWhite200(BuildContext context) {
    return context.select((SettingsCubit color) => color.blue600AndWhite200);
  }

  static Color whiteAndBlue800(BuildContext context) =>
      context.select((SettingsCubit color) => color.whiteAndBlue800);

  static Color whiteAndWhite400(BuildContext context) =>
      context.select((SettingsCubit color) => color.whiteAndWhite400);

  static Color greenAndBlue400(BuildContext context) =>
      context.select((SettingsCubit color) => color.greenAndBlue400);

  static Color whiteAndGrey200(BuildContext context) =>
      context.select((SettingsCubit color) => color.whiteAndGrey200);

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;
}
