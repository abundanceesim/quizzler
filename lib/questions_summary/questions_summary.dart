import 'package:flutter/material.dart';

import 'package:quizzler/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color:  Color.fromARGB(118, 17, 31, 109)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.5),
            child: Column(
              children: summaryData.map(
                (data) {
                  return SummaryItem(data);
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
