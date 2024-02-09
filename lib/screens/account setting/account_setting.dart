import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/common/appbar/customappbar.dart';
import 'package:parampara_collection/common/sectionheading/section_heading.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';

import '../../common/widgets/listtile/setting_menu_tile.dart';
import '../../common/widgets/listtile/user_profile.dart';
import '../../utils/constants/image_string.dart';
import 'profile.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppBar(
        title: Text(
          "Account",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: AppColors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App bar
            const SizedBox(
              height: AppSizes.spaceBwSections / 10,
            ),

            // User Profile
            UserProfile(
              imageUrl: ImageString.appLogo,
              icon: Iconsax.edit,
              title: 'Amit Kumar',
              subTtile: 'amit244@gmail.com',
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
            ),
            const SizedBox(
              height: AppSizes.spaceBwSections,
            ),
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultSpace / 2),
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    // Account setting
                    const SectionHeading(
                        title: "Account Settings", showActionButton: false),
                    const SizedBox(
                      height: AppSizes.spaceBwItems,
                    ),

                    SettingMenutile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subTtile: 'set shopping delivery address',
                      onTap: () {},
                    ),

                    SettingMenutile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTtile: 'Add remove products and move to checkout',
                      onTap: () {},
                    ),
                    SettingMenutile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTtile: 'In Progress and completed Orders',
                      onTap: () {},
                    ),
                    SettingMenutile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTtile: 'Withdraw balance to registered bank account',
                      onTap: () {},
                    ),
                    SettingMenutile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTtile: 'List of all the discounted Coupons',
                      onTap: () {},
                    ),
                    SettingMenutile(
                      icon: Iconsax.notification,
                      title: 'Motifications',
                      subTtile: 'Set any kind of notifications message',
                      onTap: () {},
                    ),
                    SettingMenutile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTtile: 'Manage data usage and comnnected account',
                      onTap: () {},
                    ),

                    // App settings
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    const SectionHeading(
                        title: "App Settings", showActionButton: false),

                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),
                    const SettingMenutile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTtile: 'Upload data to your cloud Firebase',
                    ),
                    SettingMenutile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTtile: 'Set recommodation based on location',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    SettingMenutile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTtile: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    SettingMenutile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTtile: 'Set Image Quality to be seen',
                      trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBwSections,
                    ),

                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {}, child: const Text("Logout"))),

                    const SizedBox(
                      height: AppSizes.spaceBwSections * 2,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
