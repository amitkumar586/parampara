import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../common/productcard/product_card_vertical.dart';
import '../../common/sectionheading/section_heading.dart';
import '../../common/widgets/layouts/grid_layout.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/appsizes.dart';
import '../../utils/constants/image_string.dart';
import 'widgets/appbar.dart';
import 'widgets/categories.dart';
import 'widgets/promo_slider.dart';
import 'widgets/search_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController searchcontroller = TextEditingController();
    // final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Appbar(),
            // // search box

            SearchContainer(
              text: 'Search in bar',
              icon: Iconsax.search_normal,
              onTap: () {},
              padding: const EdgeInsets.all(AppSizes.spaceBwSections),
            ),

            //  item category

            const SectionHeading(
              title: 'Popular Categories',
              textColor: AppColors.whiteColor,
              buttonTitle: "",
            ),

            const SizedBox(
              height: AppSizes.md,
            ),

            SizedBox(
              height: 80,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, index) {
                    return HorizontalCategory(
                      image: ImageString.appLogo,
                      title: 'Amit',
                      onTap: () {},
                    );
                  }),
            ),

            const SizedBox(
              height: AppSizes.md,
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
                  // promo Silder / Banner
                  const Padding(
                    padding: EdgeInsets.all(AppSizes.defaultSpace),
                    child: PromoSlider(banner: [
                      ImageString.banner1,
                      ImageString.appLogo,
                    ]),
                  ),

                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const VerticalProductCard(),
                  ),
                  const SizedBox(
                    height: AppSizes.md,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
