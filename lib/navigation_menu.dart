import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'controllers/bottom navigationbar/bottom_navigation_controller.dart';
import 'utils/constants/app_colors.dart';
import 'utils/constants/appsizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    // final darkMode =  AppTheme.  ;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: AppColors.whiteColor,
          height: 60,
          elevation: 1,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (value) {
            controller.selectIndex.value = value;
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Iconsax.home,
                size: AppSizes.iconSm,
              ),
              label: "Home",
            ),
            NavigationDestination(
                icon: Icon(
                  Iconsax.shop,
                  size: AppSizes.iconSm,
                ),
                label: "Store"),
            NavigationDestination(
                icon: Icon(
                  Iconsax.heart,
                  size: AppSizes.iconSm,
                ),
                label: "Wishlist"),
            NavigationDestination(
              icon: Icon(
                Iconsax.user,
                size: AppSizes.iconSm,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}
