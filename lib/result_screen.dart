import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.givenAnswers, super.key});
  List<String> givenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < questions.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': givenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //I made them stay in center
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y question correctly !'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summartData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
