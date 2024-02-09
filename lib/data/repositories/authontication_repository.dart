import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AuthonticationRepository extends GetxController {
  static AuthonticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    //super.onReady();
  }
}
