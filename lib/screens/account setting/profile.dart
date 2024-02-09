import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/common/appbar/customappbar.dart';
import 'package:parampara_collection/common/images/rounded_image.dart';
import 'package:parampara_collection/common/sectionheading/section_heading.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';
import '../../utils/constants/image_string.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace / 2),
        child: Column(
          children: [
            // profile
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const RoundedImage(
                      backgroundColor: AppColors.darkGrey,
                      borderRadius: 100,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      imageUrl: ImageString.appLogo),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Change Profile Picture",
                      ))
                ],
              ),
            ),

            // details

            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),
            const Divider(),

            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),

            const SectionHeading(
                title: "Profile Information", showActionButton: false),

            const SizedBox(
              height: AppSizes.spaceBwSections,
            ),
            const ProfileMenu(
              title: "Name",
              value: "Amit Kumar",
            ),
            const ProfileMenu(
              title: "User Name",
              value: "amitkumar244",
            ),

            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),

            const SectionHeading(
                title: "Personal Information", showActionButton: false),

            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),
            ProfileMenu(
              title: "User ID",
              value: "455664",
              icon: Iconsax.copy,
              onPresed: () {},
            ),
            ProfileMenu(
                title: "E-mail", value: "amit244@gmail.com", onPresed: () {}),
            ProfileMenu(
                title: "Phone Number", value: "565454515", onPresed: () {}),
            ProfileMenu(title: "Gender", value: "Male", onPresed: () {}),
            ProfileMenu(
                title: "Date of Birth", value: "11/2/5555", onPresed: () {}),

            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),
            const Divider(),

            TextButton(
                onPressed: () {},
                child: const Text(
                  "Close Account",
                  style: TextStyle(color: Colors.red),
                )),
            const SizedBox(
              height: AppSizes.spaceBwSections / 2,
            ),
          ],
        ),
      ),
    );
  }
}
