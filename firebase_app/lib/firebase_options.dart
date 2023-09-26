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
    apiKey: 'AIzaSyAZX19Z0q-0n8RXMU7QTGMiKZePCGJ4S2U',
    appId: '1:475857463300:web:5d7a932c2c3f063f2fad51',
    messagingSenderId: '475857463300',
    projectId: 'skillbox-lab',
    authDomain: 'skillbox-lab.firebaseapp.com',
    storageBucket: 'skillbox-lab.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXXdaNbWofyecIz21AaZNbExOifhtDc64',
    appId: '1:475857463300:android:74f4877cdc119f6c2fad51',
    messagingSenderId: '475857463300',
    projectId: 'skillbox-lab',
    storageBucket: 'skillbox-lab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsc94vXqEIY6f1mEQvrNKdjd06VMZTkpc',
    appId: '1:475857463300:ios:8bfd26795fbca7922fad51',
    messagingSenderId: '475857463300',
    projectId: 'skillbox-lab',
    storageBucket: 'skillbox-lab.appspot.com',
    iosClientId: '475857463300-g2cv0e8otbngdb6urp1tbvl4k06k4d6m.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAsc94vXqEIY6f1mEQvrNKdjd06VMZTkpc',
    appId: '1:475857463300:ios:b4c1766f21ee96282fad51',
    messagingSenderId: '475857463300',
    projectId: 'skillbox-lab',
    storageBucket: 'skillbox-lab.appspot.com',
    iosClientId: '475857463300-bc9kmo4qrj59v8rhf2ht2699989ie39d.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp.RunnerTests',
  );
}
