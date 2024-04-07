import 'package:flutter/Material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.indexNumber, required this.istrue});
  final bool istrue;
  final int indexNumber;

  @override
  Widget build(BuildContext context) {
    int humanNumber = indexNumber + 1;
    return Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: istrue ? Colors.blue.shade200 : Colors.pink.shade200,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        humanNumber.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 48, 29, 51)),
      ),
    );
  }
}
