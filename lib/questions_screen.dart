import 'package:quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/text_style.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.chosenAnswer});
  final Function(String answer) chosenAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String answer) {
    setState(() {
      widget.chosenAnswer(answer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //I made them stay in center
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           MyTextStyle(message: currentQuestion.text, fontSizeMy: 22),
            const SizedBox(
              height: 25,
            ),
            ...currentQuestion.shuffledQuizQuestion().map((answerr) {
              return AnswerButton(
                answerText: answerr,
                onTap: () {
                  answerQuestion(answerr);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
