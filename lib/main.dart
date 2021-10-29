import 'package:cupid_arrow/screens/login_phone_screen.dart';
import 'package:cupid_arrow/screens/loginchoose_screen.dart';
import 'package:cupid_arrow/screens/splash_screen.dart';
import 'package:cupid_arrow/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginChooseScreen.id: (context) => const LoginChooseScreen(),
        LoginPhoneScreen.id: (context) => const LoginPhoneScreen(),
      },
    );
  }
}
