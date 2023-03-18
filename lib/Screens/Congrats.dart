// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:experts_way/Screens/OnBording.dart';
import 'package:flutter/material.dart';

class Congrats extends StatefulWidget {
  const Congrats({super.key});

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
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
