import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:homepagefemale/homescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBO3Twhbe3fHsWPttDzGoL3AdS3NCE_tO8",
      appId: "1:29666705396:android:6a50a2b8005c9401ad83a1",
      messagingSenderId: "29666705396",
      projectId: "home-service-and-products",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomaePage(),
    );
  }
}
