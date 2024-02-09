import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/signup/signup_controller.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/globaltexts.dart';

class PrivecyPolicy extends StatelessWidget {
  const PrivecyPolicy({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = SinupController.instance;

    return Row(
      children: [
        SizedBox(
            height: 20,
            width: 20,
            child: Obx(() => Checkbox(
                value: controller.privecyPolicy.value,
                onChanged: (value) => controller.privecyPolicy.value =
                    !controller.privecyPolicy.value))),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${GlobalTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${GlobalTexts.privecyPolicy} ',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: dark ? AppColors.whiteColor : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? AppColors.whiteColor : AppColors.primary)),
          TextSpan(
              text: '${GlobalTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: GlobalTexts.termsofuse,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: dark ? AppColors.whiteColor : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? AppColors.whiteColor : AppColors.primary)),
        ]))
      ],
    );
  }
}
