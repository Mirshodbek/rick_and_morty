import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rick_and_morty/exports.dart';

class SearchField extends StatelessWidget {
  final String hintText;

  const SearchField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextTheme.hintTextStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100.0),
        ),
        filled: true,
        fillColor: AppColor.blue600AndWhite200(context),
        prefixIcon: IconButton(
          onPressed: null,
          icon: Center(
            child: SvgPicture.asset(
              AppIcons.search,
            ),
          ),
        ),
        suffixIcon: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 24.0,
                width: 1.0,
                color: AppColor.whiteAndWhite400(context),
              ),
              IconButton(
                onPressed: null,
                icon: SvgPicture.asset(AppIcons.filter),
              ),
            ],
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
      ),
    );
  }
}
