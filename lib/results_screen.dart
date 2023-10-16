import 'package:flutter/material.dart';
import 'package:quizzler/data/questions.dart';
import 'package:quizzler/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity, //fill up the entire width of screen.
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            ('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              icon: const Icon(Icons.replay_10_outlined),
              onPressed: restartQuiz,
              label: const Text('Restart Quiz!')),
        ]),
      ),
    );
  }
}
