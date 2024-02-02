import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      // home: const ResetPassword(),
      home: const SplashScreen(),
    );
  }
}
