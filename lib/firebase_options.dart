import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcrnyQLLZ0q50mkvf1-mZqr3pisJoq36w',
    appId: '1:23981252288:android:5c9b5df540d15ec6961725',
    messagingSenderId: '23981252288',
    projectId: 'makeathon7-app',
    storageBucket: 'makeathon7-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCymroe0z0D1LRSsECnsLh4G3AM3_26GJE',
    appId: '1:23981252288:ios:8aff561268034533961725',
    messagingSenderId: '23981252288',
    projectId: 'makeathon7-app',
    storageBucket: 'makeathon7-app.firebasestorage.app',
    iosBundleId: 'com.mlsc.makeathon7',
  );
}
