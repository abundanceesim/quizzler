import 'package:flutter/material.dart';
import 'package:quizzler/questions_screen.dart';
import 'package:quizzler/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen; //it would initially be null

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super
        .initState(); //makes sure that the regular initialization work is done as well.
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }
  // @override
  // void setState() {
  //   // TODO: implement setState

  // }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 87, 8, 151), Colors.deepPurple],
                  begin: startAlignment,
                  end: endAlignment)),
          child: activeScreen,
        ),
      ),
    );
  }
}
