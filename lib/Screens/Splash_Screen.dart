// ignore_for_file: prefer_const_constructors

import 'package:experts_way/Screens/OnBording.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnBordingPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Image(image: AssetImage('assets/images/ExpertsWay_Logo.png'))));
  }
}
