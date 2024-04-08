import 'package:flutter/material.dart';
import 'package:quiz_app/models/text_style.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/result_screen/question_identifier.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary({super.key, required this.summartData});
  List<Map<String, Object>> summartData;

  bool IsTrue(String str1, String str2) {
    return str1 == str2;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summartData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionIdentifier(
                  indexNumber: data['question-index'] as int,
                  istrue: IsTrue(
                    data['user-answer'].toString(),
                    data['correct-answer'].toString(),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextStyle(
                          message: data['question'].toString(), fontSizeMy: 17),
                      Text(
                        data['user-answer'].toString(),
                        style: TextStyle(color: Colors.pink.shade200),
                      ),
                      Text(
                        data['correct-answer'].toString(),
                        style: TextStyle(color: Colors.blue.shade200),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
