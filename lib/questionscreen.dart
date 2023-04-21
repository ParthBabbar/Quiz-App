import 'package:flutter/material.dart';
import 'package:quizz_app/models/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.chooseAnswer});
  final void Function(String answer) chooseAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var i = 0;

  void answerPressed(String selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);
    setState(() {
      i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQues = questions[i];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQues.text,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 197, 167, 201),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQues.getShuffledAnsers().map((answer) {
              return answerButton(
                  text: answer,
                  onTap: () {
                    answerPressed(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
