import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/View/Splash_Screen/splash_screen.dart';
import 'package:health/View/User_Pages/Doctor_visit/doctor_visit.dart';
import 'package:health/View/User_Pages/Laboratory/laboratory.dart';
import 'package:health/ViewModel/Localization/localization.dart';
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
      home: DoctorVisit(),
      debugShowCheckedModeBanner: false,
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      translations: Language(),
    );
  }
}
