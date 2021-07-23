import 'package:flutter/material.dart';
import 'package:rick_and_morty/exports.dart';

class GridItemWidget extends StatelessWidget {
  final Personage personage;

  const GridItemWidget({
    Key? key,
    required this.personage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage(personage.imagePersonage!),
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          personage.status!,
          style: AppTextTheme.personageLifeTextStyle.copyWith(
            color: personage.alive! ? AppColor.green : AppColor.pink,
          ),
        ),
        FittedBox(
          child: Text(
            personage.namePersonage!,
            style: AppTextTheme.personagesNameTextStyle.copyWith(
              color: AppColor.whiteAndBlue800(context),
            ),
          ),
        ),
        Text(
          "${personage.race}, ${personage.gender}",
          style: AppTextTheme.personagesGenderTextStyle,
        ),
      ],
    );
  }
}
