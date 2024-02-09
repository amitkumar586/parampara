import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/enums.dart';
import 'brand_title_text.dart';

class BrandTitleWithverifiedIcon extends StatelessWidget {
  const BrandTitleWithverifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = AppColors.primary,
    this.textalign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int? maxLines;
  final Color? iconColor, textColor;
  final TextAlign? textalign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines!,
            textalign: textalign,
            brandTextSize: brandTextSize,
          ),
        ),
        const Icon(
          Iconsax.verify5,
          color: AppColors.primary,
          size: AppSizes.iconXs,
        )
      ],
    );
  }
}
