import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/Resources/Button/mybutton.dart';
import 'package:health/Resources/TextField/MyTextField.dart';
import 'package:health/Resources/Utils/utils.dart';
import 'package:health/View/User_Authentication/Login_page.dart';
import 'package:health/View/User_Authentication/register_page.dart';
import 'package:health/View/User_Pages/Home_page/home_page.dart';
import 'login_with_phone.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _FormKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: SafeArea(
          child: Scaffold(
              body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/logo/harees_logo.png"))),
              const SizedBox(
                height: 40,
              ),
              Form(
                  key: _FormKey,
                  child: Column(children: [
                    MyTextField(
                        controller: emailController,
                        obscureText: false,
                        labelText: "Email",
                        conditionText: "Email cannot be empty"),
                    MyTextField(
                        controller: passwordController,
                        obscureText: true,
                        labelText: "Password",
                        conditionText: "Password cannot be empty"),
                  ])),
              const SizedBox(height: 50),
              RoundButton(
                  text: "Register",
                  onTap: () {
                    if (_FormKey.currentState!.validate()) {
                      _auth
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) {
                        Utils().toastMessage(value.user!.email.toString());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }).onError((error, stackTrace) {
                        Utils().toastMessage(error.toString());
                      });
                    }
                  }),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a member?",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text("Let's login",
                          style: TextStyle(fontSize: 20)))
                ],
              ),
            ],
          ),
        ),
      ))),
    );
  }
}
