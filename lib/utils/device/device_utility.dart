import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DeviceUtility {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  isLandscapeOrientaion(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientaion(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets != 0;
  }

  static void setFullScerrn(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight() {
    final veiwInsets = MediaQuery.of(Get.context!).viewInsets;
    return veiwInsets.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final veiwInsets = View.of(Get.context!).viewInsets;
    return veiwInsets.bottom > 0;
  }

//  static Future<bool>  isPhysicalDevice() async {
//   return   defaultTargetPlateform == TargetPlatform.android || defaultTargetPlateform == TargetPlatform.iOS ;
//  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

// static Future<void> setPrefrencedOrientaions(List<DeviceOrientaion> orientation ) async{
//   await SystemChrome.setPreferredOrientations(orientations);
// }

// static void hideStatusBar(){
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, o)
// }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
