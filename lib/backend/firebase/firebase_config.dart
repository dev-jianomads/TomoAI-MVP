import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDDwRjtGGq9ppiNWQ017sf2ZCv1v6iQIOk",
            authDomain: "tomoai-mvp.firebaseapp.com",
            projectId: "tomoai-mvp",
            storageBucket: "tomoai-mvp.firebasestorage.app",
            messagingSenderId: "425172227831",
            appId: "1:425172227831:web:31a866247f5bff429aa5f2",
            measurementId: "G-LBCSLK52X6"));
  } else {
    await Firebase.initializeApp();
  }
}
