import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rick_and_morty/exports.dart';

class ImagePersonage extends StatelessWidget {
  final Personage? personage;
  const ImagePersonage({Key? key, required this.personage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 284.0,
      child: Stack(
        children: [
          _backgroundImage(personage!),
          _circleAvatar(personage!,context),
        ],
      ),
    );
  }

  Widget _backgroundImage(Personage personage) => Container(
        width: double.infinity,
        height: 218.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(personage.imagePersonage!),
            colorFilter: ColorFilter.mode(
              AppColor.blue700,
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
            child: Container(
              color: AppColor.blue700.withOpacity(0.0),
            ),
          ),
        ),
      );

  Widget _circleAvatar(Personage personage,BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(
              color: AppColor.blue800AndWhite(context),
              width: 8.0,
            ),
          ),
          child: CircleAvatar(
            radius: 70.0,
            backgroundColor: AppColor.blue800AndWhite(context),
            backgroundImage: AssetImage(personage.imagePersonage!),
          ),
        ),
      );
}
