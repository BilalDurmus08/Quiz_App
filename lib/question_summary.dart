import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget{
  QuestionSummary({super.key, required this.summartData});
  List<Map<String, Object>> summartData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summartData.map((data) {
        return Row(
          children: [
            Text(((data['question-index'] as int) + 1).toString()),
            Expanded(
              child: Column(children: [
                Text(data['question'].toString()),
                Text(data['correct-answer'].toString()),
                Text(data['user-answer'].toString()),
              ],),
            )
          ],
        );
      }).toList(),
    );
  }
}