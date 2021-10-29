import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPhoneScreen extends StatefulWidget {
  const LoginPhoneScreen({Key? key}) : super(key: key);
  static const String id = 'loginphone-screen';

  @override
  _LoginPhoneScreenState createState() => _LoginPhoneScreenState();
}

TextEditingController _phoneController = TextEditingController();

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo_cupid1.png",
                  width: 60.0,
                  height: 60.0,
                ),
                const Text(
                  'CUPID ARROW',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'Enter your phone number',
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(238, 184, 236, 100),
                        Color.fromRGBO(135, 86, 240, 54)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 340,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: const InputDecoration(
                      hintText: 'Phone number', border: InputBorder.none),
                  cursorColor: Colors.black,
                ),
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
                      Color.fromRGBO(241, 120, 182, 100),
                      Color.fromRGBO(96, 93, 239, 100)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, LoginChooseScreen.id);
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  child: Text(
                    'Create account'.toUpperCase(),
                    style: const TextStyle(fontSize: 24),
                  )),
            ),
            const SizedBox(
              width: 350,
              child: Text(
                "By tapping  “Verify your phone number”, an SMS may be sent. Message & data rates may apply",
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            )
          ],
        )),
      ),
    );
  }
}
