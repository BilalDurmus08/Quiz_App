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

  void switchScreen() {
    setState(() {
      activeScreenString = 'question-screen';
    });
  }

    /* Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  } */

    @override
    Widget build(BuildContext context) {
      Widget screenWidget = StartScreen(switchScreen);

      if(activeScreenString == 'question-screen'){
        screenWidget = const QuestionScreen();
      }

      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.purple,
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

