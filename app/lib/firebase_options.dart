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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOHbHtunKKtX6cWpnKjUCVEw8dSlDNVv8',
    appId: '1:907710643901:android:ee2a0f1ff6df49dbca41d4',
    messagingSenderId: '907710643901',
    projectId: 'iraapp-355206',
    storageBucket: 'iraapp-355206.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCX8xrDDUzF_Qjpf44ZJ2qJ5gvPXabS3ac',
    appId: '1:907710643901:ios:80d94c072b3a3ecfca41d4',
    messagingSenderId: '907710643901',
    projectId: 'iraapp-355206',
    storageBucket: 'iraapp-355206.appspot.com',
    androidClientId: '907710643901-b0jjpvll0ob48jo5ul9sf7e5l30019ac.apps.googleusercontent.com',
    iosClientId: '907710643901-9s8q9mphvglr24hj1vogr95vdfh61c58.apps.googleusercontent.com',
    iosBundleId: 'com.example.instituteApp',
  );
}