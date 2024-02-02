import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/globaltexts.dart';

class LoginSignupDivider extends StatelessWidget {
  const LoginSignupDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
            color: dark ? AppColors.darkGrey : AppColors.greyColor,
          ),
        ),
        Text(
          GlobalTexts.orSignInith,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Flexible(
          child: Divider(
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
            color: dark ? AppColors.darkGrey : AppColors.greyColor,
          ),
        )
      ],
    );
  }
}
