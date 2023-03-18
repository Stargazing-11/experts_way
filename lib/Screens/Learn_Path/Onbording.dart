// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChooseTopic extends StatefulWidget {
  ChooseTopic({super.key});

  @override
  State<ChooseTopic> createState() => _ChooseTopicState();
}

class _ChooseTopicState extends State<ChooseTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'What do you wish to master',
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Pick at least 3 languages',
          ),
        ],
      ),
    );
  }
}

Widget language(topic, icon) {
  return TextButton(
    onPressed: () {},
    child: Row(
      children: [
        icon,
        Text(topic),
      ],
    ),
  );
}
