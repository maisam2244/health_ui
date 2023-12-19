import 'package:flutter/material.dart';

class MyTabs extends StatelessWidget {
  const MyTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade800,
            tabs: [
              Tab(
                text: "الفحوصات",
              ),
              Tab(text: "الزیارات صحبتہ"),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: TabBarView(
              children: [
                Text(
                  "زیارتہ تمریض",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Location: Riyadh",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
