import 'package:flutter/material.dart';
import 'package:health/Resources/AppBar/app_bar.dart';
import 'package:health/Resources/Crousal_slider/crouser_slider.dart';
import 'package:health/Resources/Search_bar/search_bar.dart';
import 'package:health/Resources/Tabs/tabs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MySearchBar(),
              SizedBox(height: 20),
              CarouselExample(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    " سجل  الطلبات",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              MyTabs()
            ],
          ),
        ),
      ),
    );
  }
}
