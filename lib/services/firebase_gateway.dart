import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseGateway {
  static const bool useFirebase = false;

  static Future<void> initializeIfEnabled() async {
    if (!useFirebase) return;

    try {
      await Firebase.initializeApp();
    } catch (error) {
      debugPrint('Firebase initialization skipped: $error');
    }
  }
}
