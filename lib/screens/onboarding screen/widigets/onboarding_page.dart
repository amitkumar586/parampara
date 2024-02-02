import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/appsizes.dart';
import '../../../utils/device/device_utility.dart';

class Onboardinpage extends StatelessWidget {
  final String image, title, subTitle;

  const Onboardinpage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            height: DeviceUtility.getScreenHeight() * 0.6,
            width: DeviceUtility.getScreenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.spaceBwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
