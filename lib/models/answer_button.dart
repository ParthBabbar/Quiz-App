import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  answerButton({required this.text, required this.onTap, super.key});
  String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              backgroundColor: const Color.fromARGB(171, 67, 1, 107),
              foregroundColor: const Color.fromARGB(234, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(text)),
    );
  }
}
