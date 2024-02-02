import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';

class MyCheckBoxTheme {
  MyCheckBoxTheme._();
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.whiteColor;
        } else {
          return Colors.transparent;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.blueColor;
        } else {
          return Colors.transparent;
        }
      }));
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.whiteColor;
        } else {
          return AppColors.blackColor;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.blueColor;
        } else {
          return Colors.transparent;
        }
      }));
}
