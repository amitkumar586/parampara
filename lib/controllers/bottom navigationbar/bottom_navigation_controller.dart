import 'package:get/get.dart';
import 'package:parampara_collection/screens/home%20screen/home_screen.dart';
import '../../screens/account setting/account_setting.dart';
import '../../screens/my store/store.dart';
import '../../screens/wishlist/wishlist.dart';

class NavigationController extends GetxController {
  final RxInt selectIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const AccountSettingScreen()
  ];
}
