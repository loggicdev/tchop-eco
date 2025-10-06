import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB8To2Mt-acL-j-CdbT1Pq69GA2lkFRXdw",
            authDomain: "txop-eco-635c7.firebaseapp.com",
            projectId: "txop-eco-635c7",
            storageBucket: "txop-eco-635c7.firebasestorage.app",
            messagingSenderId: "319213755259",
            appId: "1:319213755259:web:f7569196bf928309d33bde"));
  } else {
    await Firebase.initializeApp();
  }
}
