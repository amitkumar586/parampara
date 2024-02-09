import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App Basic Colors
  static const Color primary = Color(0XFF4b68ff);
  static const Color secondory = Color(0XFFFFE24B);
  static const Color occent = Color(0XFFb0c7ff);

  //Text Color
  static const Color textPrimary = Color(0XFF333333);
  static const Color textSecondory = Color(0XFF6c7570);
  static const Color textwhite = Colors.white;

  // Gradient color

  static const Gradient lineargradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9f9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);

  //Background colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0Xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  // Background container color
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  //  Button color
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondry = Color(0xff6c7570);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  //  Border color
  static const Color borderPrimary = Color(0xffD9d9d9);
  static const Color borderSecondry = Color(0xffe6e6e6);

  //  Error validation color
  static const Color error = Color(0xffd32d2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  // Natural shades

  static const Color blackColor = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color greyColor = Color(0xffe0e0e0);
  static const Color softgreyColor = Color(0xfff4f4f4);
  static const Color whiteColor = Colors.white;
  static Color yellow = const Color(0xffFDFDAD);
  static Color lightgray = const Color(0xffCAC6C6);
  static Color blueColor = Colors.blue;
  static Color redColor = Colors.red;
  static Color orangeColor = Colors.orange;
}
