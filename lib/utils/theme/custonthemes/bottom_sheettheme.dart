import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';

class MyBottomSheetTheme {
  MyBottomSheetTheme._();

  static BottomSheetThemeData lightBottonSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: AppColors.whiteColor,
      modalBackgroundColor: AppColors.whiteColor,
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
  static BottomSheetThemeData darkBottonSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: AppColors.blackColor,
      modalBackgroundColor: AppColors.blackColor,
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
}
