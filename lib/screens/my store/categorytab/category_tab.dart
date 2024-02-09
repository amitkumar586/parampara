import 'package:flutter/material.dart';
import 'package:parampara_collection/common/productcard/product_card_vertical.dart';
import 'package:parampara_collection/common/widgets/layouts/grid_layout.dart';

import '../../../common/sectionheading/section_heading.dart';
import '../../../common/widgets/brands/brand_show_case.dart';
import '../../../utils/constants/appsizes.dart';
import '../../../utils/constants/image_string.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                const BrandShowcase(images: [
                  ImageString.apple,
                  ImageString.apple,
                  ImageString.apple
                ]),
                const SizedBox(
                  height: AppSizes.spaceBwItems,
                ),

                // products

                SectionHeading(
                  title: "You might like",
                  showActionButton: true,
                  onPressed: () {},
                  buttonTitle: "view All",
                ),
                const SizedBox(
                  height: AppSizes.spaceBwItems,
                ),

                GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const VerticalProductCard()),
                const SizedBox(
                  height: AppSizes.spaceBwItems / 2,
                ),
              ],
            ),
          ),
        ]);
  }
}
