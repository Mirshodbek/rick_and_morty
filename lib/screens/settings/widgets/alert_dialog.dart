import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../exports.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(

      builder: (context, state) {
        return state.map(
          initialTheme: (_) => Container(),
          theme: (_data) {
            return AlertDialog(
              insetPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 24.0),
              backgroundColor: AppColor.blue600AndWhite(context),
              title: Text(
                "Темная тема",
                style: AppTextTheme.settingDialogTextStyle.copyWith(
                  color: AppColor.whiteAndBlue800(context),
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: RadioState.radioStateList.map(
                  (radio) {
                    return ListTile(
                      onTap: () =>BlocProvider.of<SettingsCubit>(context).changeTheme(radio.value),
                      horizontalTitleGap: 16.0,
                      leading: Radio(
                        fillColor: MaterialStateProperty.all(AppColor.grey),
                        activeColor: AppColor.blue400,
                        value: radio.value,
                        groupValue: _data.theme,
                        onChanged: (SettingTheme? value) =>BlocProvider.of<SettingsCubit>(context).changeTheme(value!),
                      ),
                      title: Text(
                        radio.title,
                        softWrap: true,
                        style: AppTextTheme.settingDialogContentTextStyle.copyWith(
                          color: AppColor.whiteAndBlue800(context),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    "ОТМЕНА",
                    style: AppTextTheme.settingDialogCancelTextStyle.copyWith(
                      color: AppColor.whiteAndBlue800(context),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
