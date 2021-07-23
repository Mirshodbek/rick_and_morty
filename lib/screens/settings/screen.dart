import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';
import 'package:rick_and_morty/screens/settings/widgets/alert_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return SettingsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue800AndWhite(context),
      extendBodyBehindAppBar: true,
      appBar: BackToScreen(
        () => BlocProvider.of<HomeCubit>(context).bottomNavigation(2),
        text: "Настройки",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Внешний вид",
                    style: AppTextTheme.settingHeaderTextStyle,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ListTile(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => DialogWidget(),
                      );
                    },
                    leading: SvgPicture.asset(
                      AppIcons.palette,
                      color: AppColor.whiteAndBlue800(context),
                    ),
                    title: Text(
                      "Темная тема",
                      style: AppTextTheme.settingThemeTextStyle.copyWith(
                        color: AppColor.whiteAndBlue800(context),
                      ),
                    ),
                    subtitle: Text(
                      "Включена",
                      style: AppTextTheme.settingSwitchTextStyle,
                    ),
                    trailing: SvgPicture.asset(AppIcons.arrowRightIos),
                  ),
                ],
              ),
              Divider(
                color: AppColor.grey,
                height: 72.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "О приложении",
                    style: AppTextTheme.settingHeaderTextStyle,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.",
                    style: AppTextTheme.settingInfoAboutApp.copyWith(
                      color: AppColor.whiteAndBlue800(context),
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColor.grey,
                height: 72.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Версия приложения",
                    style: AppTextTheme.settingHeaderTextStyle,
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Rick & Morty  v1.0.0",
                    style: AppTextTheme.settingInfoAboutApp.copyWith(
                      color: AppColor.whiteAndBlue800(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
