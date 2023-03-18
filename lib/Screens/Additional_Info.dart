// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:experts_way/Screens/Components/Button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FiilInfo extends StatefulWidget {
  const FiilInfo({super.key});

  @override
  State<FiilInfo> createState() => _FiilInfoState();
}

class _FiilInfoState extends State<FiilInfo> {
  TextEditingController controller = TextEditingController(text: "");
  bool visiblity_off = true;
  bool check = false;
  updateVisibility() {
    setState(() {
      visiblity_off = !visiblity_off;
    });
  }

  updateCheck() {
    setState(() {
      check = !check;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's get you set up,",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Create an account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Icon(
                Icons.account_circle_outlined,
                color: Color.fromARGB(255, 70, 70, 70),
                size: 70,
              ),
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            inputField(
              Icon(Icons.person),
              'First Name',
            ),
            inputField(
              Icon(Icons.person),
              'Last Name',
            ),
            inputField(
              Icon(Icons.email_outlined),
              'Email',
            ),
            passwordInput(visiblity_off, updateVisibility),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    icon: check
                        ? Icon(Icons.check_box)
                        : Icon(Icons.check_box_outline_blank),
                    onPressed: () {
                      updateCheck();
                    },
                  ),
                  Expanded(
                    child: Text(
                      'By Continuing you accept our Privacy policy and Term of Use',
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            button('Continue'),
          ],
        ),
      ),
    );
  }
}

Widget inputField(icon, lable) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
    child: Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(lable),
            prefixIcon: icon,
            border: InputBorder.none),
        obscureText: false,
        obscuringCharacter: "*",
      ),
    ),
  );
}

Widget passwordInput(visiblity, updateVisiblity) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
    child: Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text('Password'),
            prefixIcon: Icon(Icons.lock_rounded),
            suffixIcon: IconButton(
              icon: visiblity
                  ? Icon(
                      Icons.visibility,
                    )
                  : Icon(
                      Icons.visibility_off,
                    ),
              onPressed: () {
                updateVisiblity();
              },
            ),
            border: InputBorder.none),
        obscureText: visiblity,
        obscuringCharacter: "*",
      ),
    ),
  );
}
