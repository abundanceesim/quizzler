import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {

  AnswerButton({super.key, required this.answerText, required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  Widget build(ctx) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Color.fromARGB(255, 3, 1, 75),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
        ),
        child: Text(answerText));
  }
}