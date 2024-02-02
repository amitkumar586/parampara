import 'package:flutter/material.dart';

import '../../utils/constants/appsizes.dart';

class ScreenSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbasHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}
