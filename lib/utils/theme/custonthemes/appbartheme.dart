import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/base_style.dart';

class MyAppbarTheme {
  MyAppbarTheme._();

  static final lightAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.blackColor,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(color: AppColors.blackColor, size: 24),
      titleTextStyle: BaseStyle.black18fw600);
  static final darkAppbarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.blackColor,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(color: AppColors.whiteColor, size: 24),
      titleTextStyle: BaseStyle.white16fw600);
}
