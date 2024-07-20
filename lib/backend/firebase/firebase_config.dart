import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBbscgvbLeAR_r7R0UkBL94xLsBvLafOdU",
            authDomain: "kasapoole-40eca.firebaseapp.com",
            projectId: "kasapoole-40eca",
            storageBucket: "kasapoole-40eca.appspot.com",
            messagingSenderId: "1067757683085",
            appId: "1:1067757683085:web:43d00aa203db5e52a43dc4"));
  } else {
    await Firebase.initializeApp();
  }
}
