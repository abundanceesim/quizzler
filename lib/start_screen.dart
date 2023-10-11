import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 250, color: const Color.fromARGB(106, 255, 255, 255)),
          const SizedBox(height: 40),
          const Text(
              style: TextStyle(color: Colors.white, fontSize: 20),
              'Learn Flutter the fun way!'),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: startQuiz,
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
