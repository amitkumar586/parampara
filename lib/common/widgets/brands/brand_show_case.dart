import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../styles/widgets/shapes/container/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBwItems),
      padding: const EdgeInsets.all(AppSizes.sm),
      child: Column(
        children: [
          const BrandCard(
            showBorder: false,
          ),
          const SizedBox(
            height: AppSizes.spaceBwItems,
          ),

          // Brand Top 3 Product images
          Row(
            children: images
                .map((image) => topbrandImagesWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget topbrandImagesWidget(String image, BuildContext context) {
    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        backgroundColor: DeviceUtility.isDarkMode(context)
            ? AppColors.darkGrey
            : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
