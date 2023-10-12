import 'package:flutter/material.dart';
import 'package:quizzler/answer_button.dart';
import 'package:quizzler/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return  SizedBox(
      width: double.infinity, //fill up the entire width of screen.
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //similar to justify-content: center in CSS
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 30),
            ...currentQuestion.answers.map((answer){
              return AnswerButton(answerText: answer, onTap: (){});
            })
          ],
        ),
      ),
    );
  }
}
