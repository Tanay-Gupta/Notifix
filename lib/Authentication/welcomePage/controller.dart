
import 'package:appnewui/Authentication/adminlogin/adminlogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:appnewui/Authentication/welcomePage/welcome.dart';


class Controller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SafeArea(child: Center(child: CircularProgressIndicator()));
            } else if (snapshot.hasData) {
              print("Controller: Logged in");
              return AdminLogin();

            } else {
              print("Controller: Logged out ");
              return WelcomePage();
            }
          },
        ));
  }


}