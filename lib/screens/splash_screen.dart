

import 'dart:async';

import 'package:cupid_arrow/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id ='splash-screen';


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
        Duration(
          seconds: 5,
        ), () {

          Navigator.pushReplacementNamed(context, WelcomeScreen.id);

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Image.asset("images/logo_cupid1.png",
              width: 250.0,
              height: 250.0,
            ),
            Text('CUPID ARROW'),
          ],
        ),
      ),
      ),

    );
  }
}