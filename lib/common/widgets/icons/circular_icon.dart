import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';
import '../../../utils/constants/app_colors.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = AppSizes.md,
    this.backgroundColor,
    this.color,
    this.onpresed,
    required this.icon,
  });

  final double? width, height, size;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onpresed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : DeviceUtility.isDarkMode(context)
                ? AppColors.blackColor.withOpacity(0.9)
                : AppColors.whiteColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
