import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/device/device_utility.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = DeviceUtility.isDarkMode(context);
    return Positioned(
        bottom: DeviceUtility.getBottomNavigationBarHeight() + 30,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? AppColors.light : AppColors.dark,
                dotHeight: 4),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3));
  }
}
