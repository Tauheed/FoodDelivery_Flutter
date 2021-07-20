import 'package:flutter/material.dart';
import 'MenuScreen.dart';
import 'dart:async';
import 'LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Color.fromRGBO(250, 240, 240, 1.0)
      ),
      home: LoginScreen(),
    );
  }
}


//class SplashScreen extends StatefulWidget {
//  @override
//  _SplashScreenState createState() => _SplashScreenState();
//}
//
//class _SplashScreenState extends State<SplashScreen> {
//
//  void initState() {
//    super.initState();
//    Timer(
//        Duration(seconds: 3),
//            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
//            builder: (BuildContext context) => MenuScreen())));
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.deepOrangeAccent,
//      body: Center(
//        child: Image.asset('assets/splash.png'),
//      ),
//    );
//  }
//}

