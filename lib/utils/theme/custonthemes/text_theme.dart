import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/base_style.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: BaseStyle.black32Bold,
    headlineMedium: BaseStyle.black24fw600,
    headlineSmall: BaseStyle.black18fw600,
    titleLarge: BaseStyle.black16fw600,
    titleMedium: BaseStyle.black16fw600,
    titleSmall: BaseStyle.black14fw600opacity,
    labelLarge: BaseStyle.black12,
    labelMedium: BaseStyle.black12fw600opacity,
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: BaseStyle.white32Bold,
    headlineMedium: BaseStyle.white24fw600,
    headlineSmall: BaseStyle.white18fw600,
    titleLarge: BaseStyle.white16fw600,
    titleMedium: BaseStyle.white16fw600,
    titleSmall: BaseStyle.white14fw600opacity,
    labelLarge: BaseStyle.white12,
    labelMedium: BaseStyle.white12fw600opacity,
  );
}
