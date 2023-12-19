import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              _auth..signOut();
            },
            icon: Icon(Icons.logout_outlined))
      ],
      leading: Image.asset("assets/logo/harees_logo.png"),
      title: Text(
        "زیاد الغبین",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
      centerTitle: true,
    );
  }
}
