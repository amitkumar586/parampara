import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/bindings/general_bindings.dart';
import 'screens/splash screen/splash.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // home: const Scaffold(
      //   backgroundColor: AppColors.primary,
      //   body: Center(
      //     child: CircularProgressIndicator(
      //       color: AppColors.whiteColor,
      //     ),
      //   ),
      // ),

      home: const SplashScreen(),
    );
  }
}
