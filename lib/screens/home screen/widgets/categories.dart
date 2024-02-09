import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';
import '../../../utils/constants/app_colors.dart';

class HorizontalCategory extends StatelessWidget {
  const HorizontalCategory({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.whiteColor,
    this.backgroundColor,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBwItems / 2),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSizes.sm),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (dark ? AppColors.blackColor : AppColors.whiteColor),
                  shape: BoxShape.circle),
              child: Center(
                  child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
                color: (dark ? AppColors.light : AppColors.dark),
              )),
            ),
            const SizedBox(
              height: AppSizes.spaceBwItems / 5,
            ),
            SizedBox(
              width: 50,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
