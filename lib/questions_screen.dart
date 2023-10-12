import 'package:flutter/material.dart';
import 'package:quizzler/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  // @override
  // void setState() {
  //   // TODO: implement setState
  // }

  @override
  Widget build(context) {
    return  SizedBox(
      width: double.infinity, //fill up the entire width of screen.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //similar to justify-content: center in CSS
        children: [
          Text('The question...', style: TextStyle(color: Colors.white),),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer text...', onTap: (){}),
          AnswerButton(answerText: 'Answer text...', onTap: (){}),
          AnswerButton(answerText: 'Answer text...', onTap: () {}),
        ],
      ),
    );
  }
}
