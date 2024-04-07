import 'package:flutter/material.dart';
import 'package:quiz_app/models/text_style.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.firstPage,{super.key});
  final void Function() firstPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          /* opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ), */
          const SizedBox(height: 50),
          const MyTextStyle(message: 'Learn Flutter the fun way!', fontSizeMy: 24),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            onPressed: () {
                firstPage();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('Start Quiz'),
          ), 
        ],
      ),
    );
  }
}
