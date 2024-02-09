import 'package:get/get.dart';
import 'package:parampara_collection/utils/validators/networkmanager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
