import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDrqtIQItgQbO8xlrXTqe5l4EJiOTJDD3o",
            authDomain: "world-corporate-putt-ch-c103t0.firebaseapp.com",
            projectId: "world-corporate-putt-ch-c103t0",
            storageBucket: "world-corporate-putt-ch-c103t0.firebasestorage.app",
            messagingSenderId: "342177049331",
            appId: "1:342177049331:web:b84ea0dde933ab6ef42586"));
  } else {
    await Firebase.initializeApp();
  }
}
