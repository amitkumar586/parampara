import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/screens/auth/signup/successscreen.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = DeviceUtility.isDarkMode(context);

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
                image: const AssetImage(ImageString.mailverify),
                width: DeviceUtility.getScreenWidth() * 0.6,
              ),

              // title and sub title
              Text(
                GlobalTexts.verifyemailTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: AppSizes.sm,
              ),
              Text(GlobalTexts.verifyemailSubTitle1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(
                height: AppSizes.sm,
              ),
              Text(
                GlobalTexts.verifyemailSubTitle2,
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
                    Get.to(() => const SuccessScreen());
                  },
                  child: const Text(GlobalTexts.continueBtn),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(GlobalTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
