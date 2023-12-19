import 'package:flutter/material.dart';
import 'package:health/ViewModel/Splash_Screen_Service/splash_services.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final splashServices = SplashServices();
    splashServices.splashNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text("Splash Screen"),
      ),
    ));
  }
}
