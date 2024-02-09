import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/common/sectionheading/section_heading.dart';
import 'package:parampara_collection/common/styles/widgets/productcart/cart_menu_icon.dart';
import 'package:parampara_collection/common/widgets/layouts/grid_layout.dart';
import 'package:parampara_collection/screens/home%20screen/widgets/search_container.dart';
import 'package:parampara_collection/utils/constants/app_colors.dart';
import 'package:parampara_collection/utils/constants/appsizes.dart';
import 'package:parampara_collection/utils/device/device_utility.dart';
import '../../common/appbar/customappbar.dart';
import '../../common/tabbar.dart/custon_tabbar.dart';
import '../../common/widgets/brands/brand_card.dart';
import 'categorytab/category_tab.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            CardCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: DeviceUtility.isDarkMode(context)
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                    expandedHeight: 405,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(AppSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          const SizedBox(
                            height: AppSizes.spaceBwItems,
                          ),
                          const SearchContainer(
                            text: "Search in Store",
                            icon: Iconsax.search_normal,
                            padding: EdgeInsets.zero,
                            showBorder: true,
                            showBackground: false,
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBwItems,
                          ),

                          // Featured Brands
                          SectionHeading(
                            title: "Featured Brands",
                            showActionButton: true,
                            onPressed: () {},
                            buttonTitle: "view All",
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBwItems,
                          ),

                          GridLayout(
                              mainAxisExtent: 80,
                              itemCount: 4,
                              itemBuilder: (_, index) {
                                return BrandCard(
                                  showBorder: true,
                                  onTap: () {},
                                );
                              })
                        ],
                      ),
                    ),
                    bottom: const CustomTabBar(tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                    ]))
              ];
            },
            body: const TabBarView(
              children: [
                // brands

                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),
                CategoryTab(),

                // products
              ],
            )),
      ),
    );
  }
}
