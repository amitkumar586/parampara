import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';

class MyChipThem {
  MyChipThem._();

  static ChipThemeData lightChiptheme = ChipThemeData(
      disabledColor: AppColors.darkGrey.withOpacity(0.4),
      labelStyle: const TextStyle(color: AppColors.blackColor),
      selectedColor: AppColors.blueColor,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: AppColors.whiteColor);
  static ChipThemeData darkChiptheme = ChipThemeData(
      disabledColor: AppColors.darkGrey,
      labelStyle: const TextStyle(color: AppColors.whiteColor),
      selectedColor: AppColors.blueColor,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: AppColors.whiteColor);
}
