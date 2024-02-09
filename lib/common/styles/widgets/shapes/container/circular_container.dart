import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_colors.dart';

class AppCircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsets? margin;
  final double? padding;
  final Widget? mychild;
  final Color backgroundColor;

  const AppCircularContainer({
    super.key,
    this.width = 350,
    this.height = 330,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.mychild,
    this.backgroundColor = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin!,
      width: width,
      height: height,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: backgroundColor,
      ),
      child: mychild,
    );
  }
}
