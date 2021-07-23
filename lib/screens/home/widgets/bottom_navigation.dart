import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';

class BottomNavigation extends StatelessWidget {
  final int tabIndex;
  const BottomNavigation({Key? key, required this.tabIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.blue600AndWhite(context),
      margin: EdgeInsets.zero,
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: tabIndex,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          selectedItemColor: AppColor.greenAndBlue400(context),
          backgroundColor: AppColor.blue600AndWhite(context),
          unselectedItemColor: AppColor.grey,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppTextTheme.bottomNavigationLabelTextStyle,
          unselectedLabelStyle: AppTextTheme.bottomNavigationLabelTextStyle,
          onTap: (index) =>
              BlocProvider.of<HomeCubit>(context).bottomNavigation(index),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.personage,
                color: tabIndex == 0 ? AppColor.greenAndBlue400(context) : AppColor.grey,
              ),
              label: "Персонажи",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.location,
                color: tabIndex == 1 ? AppColor.greenAndBlue400(context) : AppColor.grey,
              ),
              label: "Локациии",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.episode,
                color: tabIndex == 2 ? AppColor.greenAndBlue400(context) : AppColor.grey,
              ),
              label: "Эпизоды",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.setting,
                color: tabIndex == 3 ? AppColor.greenAndBlue400(context) : AppColor.grey,
              ),
              label: "Настройки",
            ),
          ],
        ),
      ),
    );
  }
}
