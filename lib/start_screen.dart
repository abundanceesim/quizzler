import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



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
          Text(
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
              'Learn Flutter the fun way!'),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Color.fromARGB(206, 4, 0, 122)),
              onPressed: startQuiz,
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
