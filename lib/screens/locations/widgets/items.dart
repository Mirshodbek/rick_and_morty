import 'package:flutter/material.dart';

import '../../../exports.dart';

class Items extends StatelessWidget {
  final Location location;
  final VoidCallback onTap;

  const Items({Key? key, required this.location,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.blue600AndWhite(context),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Image.asset(
                location.imageLocation!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location.nameLocation!,
                    style: AppTextTheme.locationsNameTextStyle.copyWith(
                      color: AppColor.whiteAndBlue800(context),
                    ),
                  ),
                  Text(
                    location.statusLocation!,
                    style: AppTextTheme.locationSmallTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
