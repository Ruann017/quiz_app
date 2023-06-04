import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrect,
  });

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrect
              ? const Color.fromARGB(255, 132, 236, 146)
              : const Color.fromARGB(255, 221, 85, 85),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            color: Color.fromARGB(255, 18, 18, 18),
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
