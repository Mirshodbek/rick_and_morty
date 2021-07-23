import 'package:flutter/material.dart';
import 'package:rick_and_morty/exports.dart';

class ListItemPersonage extends StatelessWidget {
  final Personage personage;
  final VoidCallback onTap;

  const ListItemPersonage({
    Key? key,
    required this.personage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.only(bottom: 12.0),
      leading: CircleAvatar(
        radius: 37.0,
        backgroundImage: AssetImage(personage.imagePersonage!),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            personage.status!,
            style: AppTextTheme.personageLifeTextStyle.copyWith(
              color: personage.alive! ? AppColor.green : AppColor.pink,
            ),
          ),
          Text(
            personage.namePersonage!,
            style: AppTextTheme.personagesNameTextStyle.copyWith(
              color: AppColor.whiteAndBlue800(context),
            ),
          ),
        ],
      ),
      subtitle: Text(
        "${personage.race}, ${personage.gender}",
        style: AppTextTheme.personagesGenderTextStyle,
      ),
    );
  }
}
