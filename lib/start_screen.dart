import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzler/buttons/action_button.dart';



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
          ActionButton(icon: Icons.arrow_right_alt, btnText: 'Start Quiz', action: startQuiz)
        ],
      ),
    );
  }
}
