// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget button(lable) {
  return Container(
    height: 40,
    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
    width: double.infinity,
    child: TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(lable),
      onPressed: () {},
    ),
  );
}
