import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/utils/constants/globaltexts.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';
import '../../../utils/constants/image_string.dart';
import '../widigets/onboard_indicator.dart';
import '../widigets/onboarding_page.dart';
import '../widigets/onboardingnext_button.dart';
import '../widigets/skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              Onboardinpage(
                image: ImageString.onboardin1,
                title: GlobalTexts.onBoardingTitle1,
                subTitle: GlobalTexts.onBoardingSubTitle1,
              ),
              Onboardinpage(
                image: ImageString.onboardin2,
                title: GlobalTexts.onBoardingTitle2,
                subTitle: GlobalTexts.onBoardingSubTitle2,
              ),
              Onboardinpage(
                image: ImageString.onboardin3,
                title: GlobalTexts.onBoardingTitle3,
                subTitle: GlobalTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const SkipButton(),

          // smooth page indicator
          const OnBoardingIndicator(),

          //Circular Button

          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
