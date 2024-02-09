import 'package:flutter/material.dart';

import '../../../common/appbar/customappbar.dart';
import '../../../common/styles/widgets/productcart/cart_menu_icon.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/globaltexts.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GlobalTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.apply(color: AppColors.greyColor),
          ),
          Text(
            GlobalTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.apply(color: AppColors.whiteColor),
          )
        ],
      ),
      action: [
        CardCounterIcon(
          onPressed: () {},
          iconColor: AppColors.whiteColor,
        )
      ],
    );
  }
}
