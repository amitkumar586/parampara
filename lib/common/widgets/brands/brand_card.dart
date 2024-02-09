import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/device/device_utility.dart';
import '../../images/circular_image.dart';
import '../../styles/widgets/shapes/container/rounded_container.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icons
            Flexible(
              child: CircularImage(
                  isNetworkImage: false,
                  backGroundColor: Colors.transparent,
                  overLayColor: DeviceUtility.isDarkMode(context)
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  image: ImageString.appLogo),
            ),

            // text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithverifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.medium,
                  ),
                  Text(
                    "256 Products dhghdsgdg",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
