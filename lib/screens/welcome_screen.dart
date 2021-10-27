import 'package:flutter/material.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id ='welcome-screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Column(
            children: [
              Row(
                children: [
                  Image.asset("images/logo_cupid.png",
                    width: 200.0,
                    height: 200.0,

                  ),
                  Text('CUPID ARROW'),
                ],
              ),

              Image.asset("images/couple.png",
                width: 200.0,
                height: 200.0,

              ),
              Text('WELCOME TO CUPID ARROW'),
              Text('Find Your Soulmate'),
              TextButton(onPressed: (){},
                  style: TextButton.styleFrom(

                    backgroundColor: Colors.blueAccent,
                    primary: Colors.white,
                    onSurface: Colors.grey,
                  ),
                  child: Text('START'))

            ],
          )
        ),

      ),
    );
  }
}
