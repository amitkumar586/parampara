import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/screens/auth/forget%20passward/forget_passward.dart';
import 'package:parampara_collection/utils/constants/image_string.dart';
import '../../../common/styles/screen_spacing_style.dart';
import '../../../navigation_menu.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/device/device_utility.dart';
import '../signup/signup.dart';
import '../widgets/loginfootrt.dart';
import '../widgets/loginsignupdivider.dart';
import '../widgets/loginsignupform.dart';
import '../widgets/loginsignupsubtitle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwardcontroller = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: ScreenSpacingStyle.paddingWithAppbasHeight,
        child: Column(
          children: [
            // logo title & sub title

            LogoAndSubTitle(
              dark: dark,
              title: GlobalTexts.loginTitle,
              subTitle: GlobalTexts.loginSubTitle,
              image: ImageString.appLogo,
            ),

            // form
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.spaceBwSections),
                child: Column(
                  children: [
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.direct_right),
                        labelText: GlobalTexts.email,
                        controller: emailcontroller),

                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.direct_right),
                        labelText: GlobalTexts.passward,
                        controller: passwardcontroller,
                        suffixIcon: const Icon(Iconsax.eye_slash)),

                    const SizedBox(
                      height: AppSizes.spaceBwInputFields / 2,
                    ),

                    // Remember Me & Forget Password

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Remember Me

                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(
                              GlobalTexts.rememberme,
                            ),
                          ],
                        ),

                        // Forget Password
                        TextButton(
                          onPressed: () {
                            Get.to(() => const ForgetPassword());
                          },
                          child: const Text(
                            GlobalTexts.forgetPass,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),

                    // Sign up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const NavigationMenu());
                        },
                        child: const Text(GlobalTexts.loginIn),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    // create button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => const SignupScreen());
                        },
                        child: const Text(GlobalTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Divider

            LoginSignupDivider(dark: dark),

            const SizedBox(
              height: AppSizes.spaceBwSections,
            ),

            // Footer

            const LoginFooter()
          ],
        ),
      ),
    ));
  }
}
