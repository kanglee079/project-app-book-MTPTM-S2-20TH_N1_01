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
    apiKey: 'AIzaSyDj1K0NK_c9Q5vv0bIHIk-Fr9XrJnwIUaI',
    appId: '1:759461777189:web:46226338111c9401f314cc',
    messagingSenderId: '759461777189',
    projectId: 'app-book-17dad',
    authDomain: 'app-book-17dad.firebaseapp.com',
    storageBucket: 'app-book-17dad.appspot.com',
    measurementId: 'G-X4HEPHN0C1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBdgHqTbvo81g5IrIhIg90W5z1uQXu2-o',
    appId: '1:759461777189:android:ec56ad0f2eb03db2f314cc',
    messagingSenderId: '759461777189',
    projectId: 'app-book-17dad',
    storageBucket: 'app-book-17dad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgz_PbKeZm2UshUaG-0SNkIs_Bauhkq5o',
    appId: '1:759461777189:ios:3db80cc81e5b416cf314cc',
    messagingSenderId: '759461777189',
    projectId: 'app-book-17dad',
    storageBucket: 'app-book-17dad.appspot.com',
    iosClientId: '759461777189-co254fdhs8cei1nvgbgloh4mg123bbpl.apps.googleusercontent.com',
    iosBundleId: 'com.example.appBook',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgz_PbKeZm2UshUaG-0SNkIs_Bauhkq5o',
    appId: '1:759461777189:ios:1152171046b892def314cc',
    messagingSenderId: '759461777189',
    projectId: 'app-book-17dad',
    storageBucket: 'app-book-17dad.appspot.com',
    iosClientId: '759461777189-54umr37vd7re40f54u0ja2kbrbeeibhr.apps.googleusercontent.com',
    iosBundleId: 'com.example.appBook.RunnerTests',
  );
}
