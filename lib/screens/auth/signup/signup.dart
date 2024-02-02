import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/screens/auth/signup/verifyemailscreen.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';
import '../widgets/loginfootrt.dart';
import '../widgets/loginsignupdivider.dart';
import '../widgets/loginsignupform.dart';
import '../widgets/loginsignupsubtitle.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwardcontroller = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // logo title & sub title
            const SizedBox(
              height: AppSizes.spaceBwInputFields,
            ),

            LogoAndSubTitle(
              dark: dark,
              title: GlobalTexts.signupTitle,
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
                    Row(
                      children: [
                        Expanded(
                          child: LoginSignupForm(
                            prefixIcon: const Icon(Iconsax.user),
                            labelText: GlobalTexts.firstName,
                            controller: passwardcontroller,
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.spaceBwInputFields,
                        ),
                        Expanded(
                          child: LoginSignupForm(
                            prefixIcon: const Icon(Iconsax.user),
                            labelText: GlobalTexts.lastName,
                            controller: passwardcontroller,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.user),
                        labelText: GlobalTexts.userName,
                        controller: passwardcontroller,
                        suffixIcon: const Icon(Iconsax.eye_slash)),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.direct),
                        labelText: GlobalTexts.email,
                        controller: passwardcontroller,
                        suffixIcon: const Icon(Iconsax.eye_slash)),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.call),
                        labelText: GlobalTexts.phoneNumber,
                        controller: passwardcontroller,
                        suffixIcon: const Icon(Iconsax.eye_slash)),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                        prefixIcon: const Icon(Iconsax.password_check),
                        labelText: GlobalTexts.passward,
                        controller: passwardcontroller,
                        suffixIcon: const Icon(Iconsax.eye_slash)),

                    const SizedBox(
                      height: AppSizes.spaceBwInputFields / 2,
                    ),

                    // Remember Me & Forget Password

                    Row(
                      children: [
                        SizedBox(
                            height: 20,
                            width: 20,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: ' ${GlobalTexts.iAgreeTo} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: '${GlobalTexts.privecyPolicy} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .apply(
                                      color: dark
                                          ? AppColors.whiteColor
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? AppColors.whiteColor
                                          : AppColors.primary)),
                          TextSpan(
                              text: '${GlobalTexts.and} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: GlobalTexts.termsofuse,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .apply(
                                      color: dark
                                          ? AppColors.whiteColor
                                          : AppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? AppColors.whiteColor
                                          : AppColors.primary)),
                        ]))
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
                          Get.to(() => const VerifyEmailScreen());
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
