import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/View/Main_Pages/Home_page/home_page.dart';
import 'package:health/View/Splash_Screen/splash_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splash_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
