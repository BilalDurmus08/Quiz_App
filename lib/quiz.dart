import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreenString = 'start-screen';
  final List<String> chosenAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreenString = 'question-screen';
    });
  }

  void selectedAnswer(String answer){
    chosenAnswer.add(answer);
  }

    @override
    Widget build(BuildContext context) {
      Widget screenWidget = StartScreen(switchScreen);

      if(activeScreenString == 'question-screen'){
        screenWidget = QuestionScreen(chosenAnswer: selectedAnswer,);
      }

      return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurple],
              ),
            ),
            child: screenWidget,
          ),
        ),
      );
    }
  }

