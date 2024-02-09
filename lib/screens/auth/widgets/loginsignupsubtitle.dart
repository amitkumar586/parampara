import 'package:flutter/material.dart';
import '../../../utils/constants/appsizes.dart';

class LogoAndSubTitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? image;
  final bool dark;
  const LogoAndSubTitle({
    super.key,
    this.subTitle,
    required this.dark,
    this.title,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(image!),
        ),
        Text(
          title!,
          // GlobalTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(
          subTitle!,
          // GlobalTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
