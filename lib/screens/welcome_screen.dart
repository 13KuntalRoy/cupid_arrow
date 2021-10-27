import 'package:cupid_arrow/screens/loginchoose_screen.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/logo_cupid1.png",
                    width: 60.0,
                    height: 60.0,

                  ),
                  const Text('CUPID ARROW'),
                ],
              ),
             const SizedBox(
               height: 80.0,

              ),

              Image.asset("images/couple.png",
                width: 350.0,
                height: 350.0,

              ),
              const Text('WELCOME TO CUPID ARROW'),
              const SizedBox(
                height: 10.0,

              ),
              const Text('Find Your Soulmate'),
              const SizedBox(
                height: 70.0,

              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),

                child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context,LoginChooseScreen.id);

                },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      // backgroundColor: MaterialStateProperty.all(Colors.purple),
                      // padding: MaterialStateProperty.all(
                      //     EdgeInsets.symmetric(vertical: 20, horizontal: 100)),

                    ),
                    child: const Text('START')),
              )

            ],
          )
        ),

      ),
    );
  }
}
