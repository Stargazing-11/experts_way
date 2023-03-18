// ignore_for_file: prefer_const_constructors

import 'package:experts_way/Screens/Additional_Info.dart';
import 'package:experts_way/Screens/Register.dart';
import 'package:experts_way/Screens/Splash_Screen.dart';
import 'package:experts_way/Screens/Splash_Screen1.dart';
import 'package:experts_way/Screens/OnBording.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FiilInfo(),
    );
  }
}
