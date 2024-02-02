import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/base_style.dart';

class MyOutLineButtonTheme {
  MyOutLineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.blackColor,
        side: BorderSide(color: AppColors.blueColor),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: BaseStyle.black16fw600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.blackColor,
        side: BorderSide(color: AppColors.blueColor),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        textStyle: BaseStyle.white16fw600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
  );
}
