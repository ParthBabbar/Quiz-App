import 'package:flutter/material.dart';

class indexShaping extends StatelessWidget {
  indexShaping(this.index, this.isCorrectAnswer, {super.key});
  final String index;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? Colors.cyanAccent
            : Color.fromARGB(255, 237, 90, 219),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(index),
      ),
    );
  }
}
