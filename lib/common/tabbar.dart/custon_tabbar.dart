import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/device/device_utility.dart';

class CustomTabBar extends StatelessWidget implements PreferredSize {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);
    return Material(
      color: dark ? AppColors.blackColor : AppColors.whiteColor,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: dark ? AppColors.whiteColor : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());

  @override
  Widget get child => throw UnimplementedError();
}
