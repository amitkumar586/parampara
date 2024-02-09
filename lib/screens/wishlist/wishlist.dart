import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parampara_collection/common/appbar/customappbar.dart';
import 'package:parampara_collection/common/productcard/product_card_vertical.dart';
import 'package:parampara_collection/common/widgets/icons/circular_icon.dart';
import 'package:parampara_collection/common/widgets/layouts/grid_layout.dart';
import 'package:parampara_collection/screens/home%20screen/home_screen.dart';

import '../../utils/constants/appsizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          CircularIcon(
            icon: Iconsax.add,
            onpresed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const VerticalProductCard()),
            ],
          ),
        ),
      ),
    );
  }
}
