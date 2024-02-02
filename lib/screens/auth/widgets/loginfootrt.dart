import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/image_string.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor),
              shape: BoxShape.circle),
          child: Image.asset(
            ImageString.apple,
            width: AppSizes.iconLg,
            height: AppSizes.iconLg,
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor),
              shape: BoxShape.circle),
          child: Image.asset(
            ImageString.google,
            width: AppSizes.iconLg,
            height: AppSizes.iconLg,
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor),
              shape: BoxShape.circle),
          child: Image.asset(
            ImageString.facebook,
            width: AppSizes.iconLg,
            height: AppSizes.iconLg,
          ),
        ),
      ],
    );
  }
}
