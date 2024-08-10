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
    apiKey: 'AIzaSyA3uqujkwXiM-HXVJk_r3IHBq9pxV7Rl78',
    appId: '1:162559209823:web:d849c588acedaaee2706ea',
    messagingSenderId: '162559209823',
    projectId: 'ecommerce-app-5795d',
    authDomain: 'ecommerce-app-5795d.firebaseapp.com',
    storageBucket: 'ecommerce-app-5795d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1WxVQ-wbc0qQZuX6yGFl_ifM7EscnlF0',
    appId: '1:162559209823:android:3e9de9c6bf3c407b2706ea',
    messagingSenderId: '162559209823',
    projectId: 'ecommerce-app-5795d',
    storageBucket: 'ecommerce-app-5795d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrCHHTRL3-FwtfnyRxFgQRFnAj4hjARxM',
    appId: '1:162559209823:ios:22ce9d5d7d4245772706ea',
    messagingSenderId: '162559209823',
    projectId: 'ecommerce-app-5795d',
    storageBucket: 'ecommerce-app-5795d.appspot.com',
    androidClientId: '162559209823-9macrnbaq6nr33p5n2jc62qmddtpcqai.apps.googleusercontent.com',
    iosClientId: '162559209823-nkncnk46k2r74kjbc1ltigk3rqaisqv7.apps.googleusercontent.com',
    iosBundleId: 'com.example.vinxesStore',
  );

}