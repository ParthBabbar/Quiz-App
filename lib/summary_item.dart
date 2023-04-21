import 'package:flutter/material.dart';
import 'package:quizz_app/indexStyling.dart';
import 'package:google_fonts/google_fonts.dart';

class summaryItem extends StatelessWidget {
  summaryItem(this.data, {super.key});
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = data['user_answer'] == data['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        indexShaping(
            ((data['question_index'] as int) + 1).toString(), isCorrectAnswer),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 237, 90, 219)),
              ),
              Text(
                data['correct_answer'] as String,
                style: const TextStyle(color: Colors.cyanAccent),
              ),
            ],
          ),
        )
      ],
    );
  }
}
