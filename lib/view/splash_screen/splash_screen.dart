import 'package:flutter/material.dart';
import 'dart:async';

import 'package:internship_task/view/home_screen/home_screen.dart';
import 'package:internship_task/view/screen_2/screen_2.dart';
import 'package:internship_task/view/screen_3/screen_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          fit: BoxFit.fill,
          'https://hotpot.ai/designs/thumbnails/splash-screen/4.jpg',
        ),
      ),
    );
  }
}
