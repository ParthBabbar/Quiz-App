import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.quizStart, {super.key});
  void Function() quizStart;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 20.0),
        const Text(
          "Learn Flutter The Fun Way",
          style: TextStyle(
              color: Color.fromARGB(255, 190, 187, 187), fontSize: 24),
        ),
        const SizedBox(height: 20.0),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 190, 187, 187),
            ),
            onPressed: () {
              quizStart();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
      ],
    ));
  }
}
