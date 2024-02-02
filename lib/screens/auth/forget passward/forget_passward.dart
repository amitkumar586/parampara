import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/screens/auth/forget%20passward/resetpassword.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';
import '../widgets/loginsignupform.dart';
import '../widgets/loginsignupsubtitle.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwardcontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                // logo title & sub title
                LogoAndSubTitle(
                  dark: dark,
                  title: GlobalTexts.forgetPasswordTitle,
                  subTitle: GlobalTexts.forgetPasswordSubTitle,
                  image: ImageString.appLogo,
                ),

                const SizedBox(
                  height: AppSizes.spaceBwSections,
                ),

                // form
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.spaceBwSections),
                    child: Column(
                      children: [
                        LoginSignupForm(
                            prefixIcon: const Icon(Iconsax.direct),
                            labelText: GlobalTexts.email,
                            controller: passwardcontroller,
                            suffixIcon: const Icon(Iconsax.eye_slash)),
                        const SizedBox(
                          height: AppSizes.spaceBwSections,
                        ),

                        // Sign up Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const ResetPassword());
                            },
                            child: const Text(GlobalTexts.submit),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
