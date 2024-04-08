import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen/question_summary.dart';
import 'package:quiz_app/models/text_style.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.givenAnswers, super.key, required this.reStartQuiz});
  List<String> givenAnswers;
  final void Function() reStartQuiz;

  List<Map<String, Object>> get summaryData {
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
    final summaryData1 = summaryData;
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData1.where((data) {
      return data['correct-answer'] == data['user-answer'];
    }).length;

    return SizedBox(
      width: double.infinity, //I made them stay in center
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextStyle(
                message:
                    'You answered $numCorrectQuestion out of $numTotalQuestion question correctly !',
                fontSizeMy: 22),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summartData: summaryData1),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: reStartQuiz,
            ),
          ],
        ),
      ),
    );
  }
}
