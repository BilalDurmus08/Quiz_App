import 'package:quiz_app/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //I made them stay in center
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The questions  ....', style: TextStyle(color: Colors.white),),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(onTap: (){}, answerText: ('Answer1')),
          AnswerButton(onTap: (){}, answerText: ('Answer1')),
          AnswerButton(onTap: (){}, answerText: ('Answer1')),
        ],
      ),
    );
  }
}
