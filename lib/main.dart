import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:parampara_collection/firebase_options.dart';
import 'app.dart';
import 'data/repositories/authontication_repository.dart';

Future<void> main() async {
  // Getx local storage
  await GetStorage.init();

  //  await Native splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo : widgit binding
  WidgetsFlutterBinding.ensureInitialized();

  // Todo: Initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthonticationRepository()));

  runApp(const App());
}
