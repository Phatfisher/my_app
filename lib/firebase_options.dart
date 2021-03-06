// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCNASxhkaK15pHGzyO3hUcMZ-PuBy-7Dtc',
    appId: '1:935162926100:web:adda3e0cb90892eba1c301',
    messagingSenderId: '935162926100',
    projectId: 'fir-my-app-7675a',
    authDomain: 'fir-my-app-7675a.firebaseapp.com',
    storageBucket: 'fir-my-app-7675a.appspot.com',
    measurementId: 'G-FN5QX7MK8E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVIrzKIITzSH_Di3NMmCQ5vckII7hp9_E',
    appId: '1:935162926100:android:a96b0bb4e8779b43a1c301',
    messagingSenderId: '935162926100',
    projectId: 'fir-my-app-7675a',
    storageBucket: 'fir-my-app-7675a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChPrLuasGSstBCHu2v3gfoluH8MribgrU',
    appId: '1:935162926100:ios:51bd71cec6326efca1c301',
    messagingSenderId: '935162926100',
    projectId: 'fir-my-app-7675a',
    storageBucket: 'fir-my-app-7675a.appspot.com',
    iosClientId: '935162926100-gldloubau1916p0e6m2c3le7bftc1c76.apps.googleusercontent.com',
    iosBundleId: 'com.myapp.app',
  );
}
