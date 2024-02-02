import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/base_style.dart';

class MyTextFormFieldTheme {
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.greyColor,
    suffixIconColor: AppColors.greyColor,
    labelStyle: BaseStyle.black14fw400,
    hintStyle: BaseStyle.black14fw400,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
        fontStyle: FontStyle.normal,
        color: AppColors.blackColor.withOpacity(0.8)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.greyColor)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.greyColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.redColor)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.orangeColor)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.greyColor,
    suffixIconColor: AppColors.greyColor,
    labelStyle: BaseStyle.black14fw400,
    hintStyle: BaseStyle.black14fw400,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
        fontStyle: FontStyle.normal,
        color: AppColors.whiteColor.withOpacity(0.8)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.greyColor)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.greyColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white12),
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.redColor)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: AppColors.orangeColor)),
  );
}
