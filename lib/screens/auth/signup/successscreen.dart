import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/screens/auth/login/login_screen.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // image with 60 % screen with
              Image(
                image: const AssetImage(ImageString.successImage),
                width: DeviceUtility.getScreenWidth() * 0.6,
              ),

              // title and sub title
              Text(
                GlobalTexts.successTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: AppSizes.sm,
              ),
              Text(
                GlobalTexts.successSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: AppSizes.xl,
              ),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: const Text(GlobalTexts.continueBtn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
