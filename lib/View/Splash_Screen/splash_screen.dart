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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 140,
              backgroundImage: AssetImage("assets/logo/harees_logo.png"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "Harees ",
            style: TextStyle(fontSize: 30),
          ))
        ],
      ),
    ));
  }
}
