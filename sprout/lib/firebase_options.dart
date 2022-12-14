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
        return macos;
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
    apiKey: 'AIzaSyBg8mFH8X07VjBdWOkKNswk9jBiAxt4_y0',
    appId: '1:902983096008:web:a159671c55d7dd4d03b7fd',
    messagingSenderId: '902983096008',
    projectId: 'sproutapp-3c9ee',
    authDomain: 'sproutapp-3c9ee.firebaseapp.com',
    storageBucket: 'sproutapp-3c9ee.appspot.com',
    measurementId: 'G-GHRLN0QGPX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP3uDljKRQuH2yGePrDGT3_PvaTKTGKuA',
    appId: '1:902983096008:android:8d52cbbe992dddb103b7fd',
    messagingSenderId: '902983096008',
    projectId: 'sproutapp-3c9ee',
    storageBucket: 'sproutapp-3c9ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNtiKfvU1W2EChMHxffL66fU6yqRI-IKw',
    appId: '1:902983096008:ios:f41aa45924a284cc03b7fd',
    messagingSenderId: '902983096008',
    projectId: 'sproutapp-3c9ee',
    storageBucket: 'sproutapp-3c9ee.appspot.com',
    iosClientId: '902983096008-9vrkkovnt2ibk7vu8v5rg0h8enopdous.apps.googleusercontent.com',
    iosBundleId: 'com.example.sprout',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNtiKfvU1W2EChMHxffL66fU6yqRI-IKw',
    appId: '1:902983096008:ios:f41aa45924a284cc03b7fd',
    messagingSenderId: '902983096008',
    projectId: 'sproutapp-3c9ee',
    storageBucket: 'sproutapp-3c9ee.appspot.com',
    iosClientId: '902983096008-9vrkkovnt2ibk7vu8v5rg0h8enopdous.apps.googleusercontent.com',
    iosBundleId: 'com.example.sprout',
  );
}
