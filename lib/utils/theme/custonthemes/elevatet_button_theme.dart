import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/base_style.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.whiteColor,
        backgroundColor: AppColors.blueColor,
        disabledBackgroundColor: AppColors.darkGrey,
        disabledForegroundColor: AppColors.darkGrey,
        side: BorderSide(color: AppColors.blueColor),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: BaseStyle.white16fw600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.whiteColor,
        backgroundColor: AppColors.blueColor,
        disabledBackgroundColor: AppColors.darkGrey,
        disabledForegroundColor: AppColors.darkGrey,
        side: BorderSide(color: AppColors.blueColor),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: BaseStyle.white16fw600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
}
