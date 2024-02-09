import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:parampara_collection/utils/constants/image_string.dart';
import 'package:parampara_collection/utils/loaders/loaders.dart';
import 'package:parampara_collection/utils/popups/full_screen_loader.dart';
import '../../utils/validators/networkmanager.dart';

class SinupController extends GetxController {
  static SinupController get instance => Get.find();

  final hidePassword = true.obs;
  final privecyPolicy = true.obs;
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupformKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // Start Loading
      FullScreenLoader.openLoadingDialog(
          "We are processing your information...", ImageString.dockeImage);

      // Check Internet connection

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // FullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!signupformKey.currentState!.validate()) {
        // FullScreenLoader.stopLoading();
        return;
      }

      // privacy policy check

      if (!privecyPolicy.value) {
        Loaders.warrningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order  to create account , you must have to read and accept privacy policy and terms to use");
        return;
      }

      // Register ur int the firebase authontication & save user data in the firebase

      // save authonticated user in the firebase firestore

      // show success message
    } catch (e) {
      // show some generic error
      Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      // remove loader
      FullScreenLoader.stopLoading();
    }
  }
}
