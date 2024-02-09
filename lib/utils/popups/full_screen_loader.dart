import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/common/loaders/animation_loader.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: DeviceUtility.isDarkMode(Get.context!)
              ? AppColors.dark
              : AppColors.whiteColor,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 220,
              ),
              AnimationLoader(
                text: text,
                animation: animation,
              )
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
