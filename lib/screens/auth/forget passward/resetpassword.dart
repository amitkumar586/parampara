import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/screens/auth/login/login_screen.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';
import 'package:parampara_collection/utils/constants/image_string.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';
import '../../../utils/constants/globaltexts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                image: const AssetImage(ImageString.resetPass),
                width: DeviceUtility.getScreenWidth() * 0.6,
              ),

              // title and sub title
              Text(
                GlobalTexts.resetPassTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: AppSizes.sm,
              ),
              Text(
                GlobalTexts.resetPassSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: AppSizes.xl,
              ),

              // button
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: const Text(GlobalTexts.done),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBwSections,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(GlobalTexts.resetEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
