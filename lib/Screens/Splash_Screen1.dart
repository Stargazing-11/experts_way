// ignore_for_file: prefer_const_constructors

import 'package:experts_way/Screens/Splash_Screen.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => Splash2State();
}

class Splash2State extends State<Splash2> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Splash(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        '',
      ),
    ));
  }
}
