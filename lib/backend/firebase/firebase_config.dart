import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAbx3RzCoSdNoATGxgbuzW_6z4CeWiwLT4",
            authDomain: "weddingapp-ee5ed.firebaseapp.com",
            projectId: "weddingapp-ee5ed",
            storageBucket: "weddingapp-ee5ed.appspot.com",
            messagingSenderId: "151543760629",
            appId: "1:151543760629:web:08f065832ef701f9b2a7bc",
            measurementId: "G-019DRRGCD3"));
  } else {
    await Firebase.initializeApp();
  }
}
