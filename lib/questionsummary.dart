import 'package:flutter/material.dart';
import 'package:quizz_app/resultscreen.dart';
import 'package:quizz_app/indexStyling.dart';
import 'package:quizz_app/summary_item.dart';

class questionSummary extends StatelessWidget {
  const questionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return summaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
