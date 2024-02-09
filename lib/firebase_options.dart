// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD8-K6uaD61WhO1sZYLd1Fl_wHjYzxnC1I',
    appId: '1:1029336342311:web:14db13b1f9133f021b1302',
    messagingSenderId: '1029336342311',
    projectId: 'parampara-5cc1c',
    authDomain: 'parampara-5cc1c.firebaseapp.com',
    storageBucket: 'parampara-5cc1c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI4byXBVRK9Jv2KONd582I8RBr8qDnm1c',
    appId: '1:1029336342311:android:7a949870b0594d541b1302',
    messagingSenderId: '1029336342311',
    projectId: 'parampara-5cc1c',
    storageBucket: 'parampara-5cc1c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCwMpB0l-AdPuLUCu4pmXS_Gl3w13B7-c0',
    appId: '1:1029336342311:ios:1831a4b3faaf84e91b1302',
    messagingSenderId: '1029336342311',
    projectId: 'parampara-5cc1c',
    storageBucket: 'parampara-5cc1c.appspot.com',
    iosBundleId: 'com.example.paramparaCollection',
  );
}
