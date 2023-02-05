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
    apiKey: 'AIzaSyCOSlr5I3SW4APBlrSgcL0BX22d2KUEQGs',
    appId: '1:410897441945:web:caf9a43425cac3d6f0c408',
    messagingSenderId: '410897441945',
    projectId: 'flutter-30d1c',
    authDomain: 'flutter-30d1c.firebaseapp.com',
    storageBucket: 'flutter-30d1c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtS6abhgdEYaK0F7SU_57Y8YEHLZdoVV0',
    appId: '1:410897441945:android:4640351fc58c3e0cf0c408',
    messagingSenderId: '410897441945',
    projectId: 'flutter-30d1c',
    storageBucket: 'flutter-30d1c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNalmSN6HpzTaa2JO3O1kVjBfHklvnk2w',
    appId: '1:410897441945:ios:38e284d45ed0d1a6f0c408',
    messagingSenderId: '410897441945',
    projectId: 'flutter-30d1c',
    storageBucket: 'flutter-30d1c.appspot.com',
    iosClientId:
        '410897441945-kgbes3ahks2nupuqun1raud5fljq72kl.apps.googleusercontent.com',
    iosBundleId: 'com.example.certyyflutter.certyyflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNalmSN6HpzTaa2JO3O1kVjBfHklvnk2w',
    appId: '1:410897441945:ios:38e284d45ed0d1a6f0c408',
    messagingSenderId: '410897441945',
    projectId: 'flutter-30d1c',
    storageBucket: 'flutter-30d1c.appspot.com',
    iosClientId:
        '410897441945-kgbes3ahks2nupuqun1raud5fljq72kl.apps.googleusercontent.com',
    iosBundleId: 'com.example.certyyflutter.certyyflutter',
  );
}
