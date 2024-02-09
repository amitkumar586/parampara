import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/controllers/home%20controller/home_controller.dart';
import '../../../common/images/rounded_image.dart';
import '../../../common/styles/widgets/shapes/container/circular_container.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/appsizes.dart';

class PromoSlider extends StatelessWidget {
  final List<String>? banner;

  const PromoSlider({
    super.key,
    this.banner,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 12,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banner!
              .map(
                (url) => RoundedImage(
                  borderRadius: AppSizes.cardRadiusLg,
                  backgroundColor: AppColors.greyColor,
                  applyImageRadius: true,
                  imageUrl: url,
                  width: Get.width,
                  fit: BoxFit.fill,
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: AppSizes.spaceBwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banner!.length; i++)
                AppCircularContainer(
                  width: 15,
                  height: 15,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.blackColor,
                  margin: const EdgeInsets.only(right: 10.0),
                ),
            ],
          ),
        )
      ],
    );
  }
}
