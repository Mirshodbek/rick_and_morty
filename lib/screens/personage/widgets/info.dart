import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';

class InfoPersonage extends StatelessWidget {
  final Personage personage;

  const InfoPersonage({Key? key, required this.personage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          FittedBox(
            child: Text(
              personage.namePersonage!,
              style: AppTextTheme.personageNameTextStyle.copyWith(
                color: AppColor.whiteAndBlue800(context),
              ),
            ),
          ),
          Text(
            personage.status!,
            style: AppTextTheme.personageLifeTextStyle.copyWith(
              color: personage.alive! ? AppColor.green : AppColor.pink,
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          Text(
            Variables.infoPersonage,
            style: AppTextTheme.infoPersonageTextStyle.copyWith(
              color: AppColor.whiteAndBlue800(context),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Row(
            children: [
              Expanded(
                child: _infoWidget('Пол', personage.gender!,context),
              ),
              Expanded(
                child: _infoWidget('Расса', personage.race!,context),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          _placeBirth(context),
          const SizedBox(
            height: 24.0,
          ),
          _location(context),
        ],
      ),
    );
  }

  Widget _placeBirth(BuildContext context) => InkWell(
        onTap: () {},
        child: Row(
          children: [
            _infoWidget("Место рождения", "Земля C-137",context),
            const Spacer(),
            SvgPicture.asset(AppIcons.arrowRightIos),
          ],
        ),
      );

  Widget _location(BuildContext  context) => InkWell(
        onTap: () {},
        child: Row(
          children: [
            _infoWidget("Местоположение", "Земля (Измерение подменны)",context),
            const Spacer(),
            SvgPicture.asset(AppIcons.arrowRightIos),
          ],
        ),
      );

  Widget _infoWidget(String category, String info,BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: AppTextTheme.infoCategoryTextStyle,
        ),
        Text(
          info,
          style: AppTextTheme.infoDetailsTextStyle.copyWith(
            color: AppColor.whiteAndBlue800(context),
          ),
        ),
      ],
    );
  }
}
