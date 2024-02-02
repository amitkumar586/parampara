import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/base_style.dart';
import 'package:parampara_collection/utils/constants/image_string.dart';
import 'package:parampara_collection/screens/onboarding%20screen/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Get.offAll(() => const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Lottie.asset(
                ImageString.splashScreen,
              ),
            ),
          ),
          Container(
            width: Get.width,
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            child: Text(
              "Powered By Parampara ",
              style: BaseStyle.white16fw500,
            ),
          ),
        ],
      ),
    );
  }
}
