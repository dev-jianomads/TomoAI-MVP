import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBKfLa4dVvFjfR4HI2XF3eb13qGK9HALG4",
            authDomain: "cleaning-app-87923.firebaseapp.com",
            projectId: "cleaning-app-87923",
            storageBucket: "cleaning-app-87923.appspot.com",
            messagingSenderId: "144465513576",
            appId: "1:144465513576:web:f5b5777119dbcacfe0bfdd"));
  } else {
    await Firebase.initializeApp();
  }
}
