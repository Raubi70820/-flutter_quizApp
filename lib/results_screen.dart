// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_19/data/problem1.dart';
// import 'package:flutter_application_19/problem.dart';
import 'package:flutter_application_19/problems_summary.dart';


class Resultscreen extends StatelessWidget {
  const Resultscreen({ super.key, required this.chosenanswers,required this.onRestart});
  final void Function() onRestart;
  final List<String> chosenanswers;
  
 

  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> sumaary = [];
    for (var i = 0; i < chosenanswers.length; i++) {
      sumaary.add({
        'problem_index': i,
        'problem': problems[i].text,
        'correct_answer': problems[i].answers[0],
        'user_answer': chosenanswers[i]
      });
    }
    return sumaary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getsummarydata();
    final numTotalProblem = problems.length;
    final numCorrectproblems = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectproblems out of $numTotalProblem problem Correctly !',style: TextStyle(color: Colors.white,fontSize: 20),),
            const SizedBox(
              height: 30,
            ),
            problemsummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed:onRestart, child: Text('Restart Test',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
