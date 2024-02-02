import 'package:flutter/material.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/device/device_utility.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DeviceUtility.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: const Text("Skip")));
  }
}
