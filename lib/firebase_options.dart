// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAAxnycvINAS5akky7x0YbpyxhO05oHn74',
    appId: '1:97778055306:web:c82f74b871cbd20652d573',
    messagingSenderId: '97778055306',
    projectId: 'individualtest',
    authDomain: 'individualtest.firebaseapp.com',
    storageBucket: 'individualtest.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-Ai5yblNrznVMzO-kpiPF7IUBy98dSHU',
    appId: '1:97778055306:android:64fd27bef171b54352d573',
    messagingSenderId: '97778055306',
    projectId: 'individualtest',
    storageBucket: 'individualtest.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvnQgOD679QE9ZAGq-G-RnYyhikigfNFU',
    appId: '1:97778055306:ios:28306810b0e18b0752d573',
    messagingSenderId: '97778055306',
    projectId: 'individualtest',
    storageBucket: 'individualtest.appspot.com',
    iosBundleId: 'com.example.individualtest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvnQgOD679QE9ZAGq-G-RnYyhikigfNFU',
    appId: '1:97778055306:ios:28306810b0e18b0752d573',
    messagingSenderId: '97778055306',
    projectId: 'individualtest',
    storageBucket: 'individualtest.appspot.com',
    iosBundleId: 'com.example.individualtest',
  );
}
