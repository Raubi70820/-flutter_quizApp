import 'package:flutter/material.dart';
import 'package:flutter_application_19/answers_button.dart';
import 'package:flutter_application_19/data/problem1.dart';

class Problemscreen extends StatefulWidget {
  const Problemscreen({super.key, required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;

  @override
  State<Problemscreen> createState() => _ProblemscreenState();
}

class _ProblemscreenState extends State<Problemscreen> {
  var currentproblemIndex = 0;
  // Widget.onselectedanswer(selectedanswers);
  void answerproblem(String selectedanswer) {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      currentproblemIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentProblem = problems[currentproblemIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentProblem.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentProblem.getShuffledanswers().map((answer) {
              return answersbutton(
                  answersText: answer,
                  onTap: () {
                    answerproblem(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
