import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/common/images/rounded_image.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';

import '../../utils/constants/appsizes.dart';
import '../../utils/constants/image_string.dart';
import '../styles/shadows.dart';
import '../styles/widgets/shapes/container/rounded_container.dart';
import '../widgets/icons/circular_icon.dart';
import '../widgets/texts/brand_title_text_with_verified_icon.dart';
import '../widgets/texts/producttitletext.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 10,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [
              AppShadowStyle.verticalProductShadow,
            ],
            borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
            color: dark ? AppColors.darkGrey : AppColors.whiteColor),
        child: Column(
          children: [
            AppRoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // thumbnail
                  const RoundedImage(
                    imageUrl: ImageString.product1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondory.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: Text(
                        "235",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: AppColors.blackColor),
                      ),
                    ),
                  ),
                  //Favourite iconButton
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: AppColors.redColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),

            /// details
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBwSections / 2,
                  ),
                  BrandTitleWithverifiedIcon(
                    title: "Nike",
                  ),
                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.sm),
                  child: Text(
                    '\$35',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productImageRadius),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Iconsax.add,
                      color: AppColors.whiteColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
