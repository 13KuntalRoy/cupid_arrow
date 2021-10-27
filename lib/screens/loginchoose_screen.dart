import 'package:flutter/material.dart';
class LoginChooseScreen extends StatefulWidget {
  const LoginChooseScreen({Key? key}) : super(key: key);
  static const String id ='loginchoose-screen';


  @override
  _LoginChooseScreenState createState() => _LoginChooseScreenState();
}

class _LoginChooseScreenState extends State<LoginChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Text("login choose"),
        ),
    );
  }
}
