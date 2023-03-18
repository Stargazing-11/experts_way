// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:experts_way/Screens/Splash_Screen.dart';
import 'package:flutter/material.dart';

class OnBordingPage extends StatefulWidget {
  OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  List tutorials = [
    [
      'Freelancer-bro 1.png',
      'Learn anytime, ',
      'and anywhere',
      "Lorem ipsum dolor sit amet consectetur adipiscing "
          "elit Ut et massa mi. Aliquam in hendrerit."
    ],
    [
      'Recess-bro 1.png',
      'Unleash Your Creativity',
      'and Compete with Style',
      'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit.'
    ],
    [
      'Knowledge-bro 1.png',
      'High quality lectures and ',
      'unlimited questions',
      "Lorem ipsum dolor sit amet consectetur "
          "adipiscing elit Ut et massa mi."
          "Aliquam in hendrerit."
    ],
  ];
  int currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  void updateIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: tutorials.length,
              onPageChanged: (value) => updateIndex(value),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Image(
                        image:
                            AssetImage('assets/images/${tutorials[index][0]}'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        tutorials[index][1],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        tutorials[index][2],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        tutorials[index][3],
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                tutorials.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
            width: double.infinity,
            child: TextButton(
              child: Text(currentIndex == tutorials.length - 1
                  ? "Get Started"
                  : "Next"),
              onPressed: () {
                if (currentIndex == tutorials.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Splash(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
                updateIndex(currentIndex += 1);
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Colors.blue
            : Color.fromARGB(255, 171, 200, 243),
      ),
    );
  }
}
