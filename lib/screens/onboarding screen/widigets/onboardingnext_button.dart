import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/controllers/onboarding/onboarding_controller.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Positioned(
        bottom: DeviceUtility.getBottomNavigationBarHeight(),
        right: AppSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? AppColors.primary : AppColors.blackColor),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
