import 'package:eatanytime/MenuScreen.dart';
import 'package:flutter/material.dart';
import 'CartCell.dart';
import 'PaymentScreen.dart';
import 'TextFieldInput.dart';

const bgColor = Color.fromRGBO(250, 240, 240, 1.0);

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splash.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Container(
                height: 200,
                child: Column(
                  children: <Widget>[
                    TextFieldInput(hintTxt: 'Id'),
                    SizedBox(height: 10),
                    TextFieldInput(hintTxt: 'Password'),
                    SizedBox(height: 20),
                    RaisedButton(
                      padding: EdgeInsets.only(
                          left: 100, right: 100, top: 10, bottom: 10),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return MenuScreen();
                        }));
                      },
                      color: Colors.green,
                      child:
                          const Text('Login', style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}



