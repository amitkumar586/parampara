import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/theme/custonthemes/bottom_sheettheme.dart';
import 'package:parampara_collection/utils/theme/custonthemes/chiptheme.dart';
import 'package:parampara_collection/utils/theme/custonthemes/outlinebuttontheme.dart';
import 'package:parampara_collection/utils/theme/custonthemes/text_theme.dart';
import 'package:parampara_collection/utils/theme/custonthemes/textformfield_theme.dart';

import 'custonthemes/elevatet_button_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.blueColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: MyChipThem.lightChiptheme,
      bottomSheetTheme: MyBottomSheetTheme.lightBottonSheetTheme,
      outlinedButtonTheme: MyOutLineButtonTheme.lightOutlineButtonTheme,
      inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.blueColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: MyChipThem.darkChiptheme,
      bottomSheetTheme: MyBottomSheetTheme.darkBottonSheetTheme,
      outlinedButtonTheme: MyOutLineButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme);
}
