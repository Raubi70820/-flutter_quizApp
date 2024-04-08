import 'package:flutter/material.dart';
import 'package:flutter_application_19/data/problem1.dart';

import 'package:flutter_application_19/problem.dart';
import 'package:flutter_application_19/results_screen.dart';
import 'package:flutter_application_19/start_screen.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> selectedanswers = [];
  var activescreen = 'start-screen';
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activescreen = 'problems-screen';
    });
  }

  void chooseanswer(String answer) {
    selectedanswers.add(answer);
    if (selectedanswers.length == problems.length) {
      setState(() {
        activescreen = 'results-screen';
      });
    }
  }

  void restartTest() {
    setState(() {
      selectedanswers = [];
      activescreen = 'problems-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activescreen == 'problems-screen') {
      screenWidget = Problemscreen(
        onselectedanswer: chooseanswer,
      );
    }

    if (activescreen == 'results-screen') {
      screenWidget = Resultscreen(
        chosenanswers: selectedanswers,
        onRestart: restartTest,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: screenWidget,
        ),
      ),
    );
  }
}
