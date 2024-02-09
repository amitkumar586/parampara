import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../controllers/signup/signup_controller.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/globaltexts.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/validators/validation.dart';
import '../widgets/loginfootrt.dart';
import '../widgets/loginsignupdivider.dart';
import '../widgets/loginsignupform.dart';
import '../widgets/loginsignupsubtitle.dart';
import '../widgets/privecy_policy.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SinupController());
    final dark = DeviceUtility.isDarkMode(context);

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
              key: controller.signupformKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.spaceBwSections),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: LoginSignupForm(
                            obscureText: false,
                            prefixIcon: const Icon(Iconsax.user),
                            labelText: GlobalTexts.firstName,
                            controller: controller.firstname,
                            validator: (value) => Validator.validateEmptyText(
                                "First name", value),
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.spaceBwInputFields,
                        ),
                        Expanded(
                          child: LoginSignupForm(
                            obscureText: false,
                            prefixIcon: const Icon(Iconsax.user),
                            labelText: GlobalTexts.lastName,
                            controller: controller.lastname,
                            validator: (value) =>
                                Validator.validateEmptyText("Last name", value),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                      obscureText: false,
                      prefixIcon: const Icon(Iconsax.user),
                      labelText: GlobalTexts.userName,
                      controller: controller.username,
                      validator: (value) =>
                          Validator.validateEmptyText("User name", value),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                      obscureText: false,
                      prefixIcon: const Icon(Iconsax.direct),
                      labelText: GlobalTexts.email,
                      controller: controller.email,
                      validator: (value) =>
                          Validator.validateEmptyText("Email", value),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    LoginSignupForm(
                      obscureText: false,
                      prefixIcon: const Icon(Iconsax.call),
                      labelText: GlobalTexts.phoneNumber,
                      controller: controller.phoneNumber,
                      validator: (value) => Validator.phoneValidator(value),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    Obx(
                      () => LoginSignupForm(
                        obscureText: controller.hidePassword.value,
                        prefixIcon: const Icon(Iconsax.password_check),
                        labelText: GlobalTexts.passward,
                        controller: controller.password,
                        suffixIcon: IconButton(
                            onPressed: () => controller.hidePassword.value =
                                !controller.hidePassword.value,
                            icon: Icon(controller.hidePassword.value
                                ? Iconsax.eye_slash
                                : Iconsax.eye)),
                        validator: (value) => Validator.validatePassword(value),
                      ),
                    ),

                    const SizedBox(
                      height: AppSizes.spaceBwInputFields,
                    ),

                    // privecy policy
                    PrivecyPolicy(dark: dark),

                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),

                    // Sign up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.signup();
                          //Get.to(() => const VerifyEmailScreen());
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
