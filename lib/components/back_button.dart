import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';

class BackToScreen extends StatelessWidget implements PreferredSize {
  final VoidCallback onPressed;
  final String text;

  BackToScreen(this.onPressed, {this.text = ""})
      : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: AppTextTheme.settingTextStyle.copyWith(
        color: AppColor.whiteAndBlue800(context),
      ),
      title: Text(text),
      leading: CircleAvatar(
        backgroundColor: AppColor.blue600AndWhite200(context),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            AppIcons.arrowLeftDefault,
            color: AppColor.whiteAndGrey200(context),
          ),
        ),
      ),
      leadingWidth: 72.0,
    );
  }

  @override
  Widget get child => throw UnimplementedError();
}
