import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig{
  static FirebaseOptions get platformOptions{

  if (Platform.isIOS){
    return const FirebaseOptions(
      apiKey: "",
      appId: "",
      messagingSenderId: "",
      projectId: "",
      );
  }else {
    return const FirebaseOptions(
      apiKey: "",
      appId: "",
      messagingSenderId: "",
      projectId: "",
    );
  }
  }
}