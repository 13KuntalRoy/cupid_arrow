import 'package:cupid_arrow/screens/auth/login_phone_screen.dart';
import 'package:flutter/material.dart';

class LoginChooseScreen extends StatefulWidget {
  const LoginChooseScreen({Key? key}) : super(key: key);
  static const String id = 'loginchoose-screen';

  @override
  _LoginChooseScreenState createState() => _LoginChooseScreenState();
}

class _LoginChooseScreenState extends State<LoginChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'CUPID ARROW',
              style: TextStyle(fontSize: 24),
            ),
            Image.asset(
              "images/logo_cupid1.png",
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(
              height: 40.0,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'By tapping Log in, you agree with our Terms of Service and Privacy Policy',
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: 340,
              height: 72,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(26, 23, 24, 100),
                      Color.fromRGBO(0, 102, 255, 100)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginChooseScreen.id);
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  child: const Text(
                    'Login with Facebook',
                    style: TextStyle(fontSize: 24),
                  )),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: 340,
              height: 72,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(241, 120, 182, 100),
                      Color.fromRGBO(96, 93, 239, 100)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPhoneScreen.id);
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  child: const Text(
                    'Login with phone number',
                    style: TextStyle(fontSize: 24),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
