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
  var activeScreen = 'start-screen'; //easier to just have it be text

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen'){
      screenWidget =  const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 87, 8, 151), Colors.deepPurple],
                  begin: startAlignment,
                  end: endAlignment)),
          child: screenWidget,
        ),
      ),
    );
  }
}


// class _QuizState extends State<Quiz> {
//   var activeScreen = 'start-screen'; //easier to just have it be text

//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questions-screen';
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   colors: [Color.fromARGB(255, 87, 8, 151), Colors.deepPurple],
//                   begin: startAlignment,
//                   end: endAlignment)),
//           child: activeScreen == 'start-screen'
//               ? StartScreen(switchScreen)
//               : QuestionsScreen(),
//         ),
//       ),
//     );
//   }
// }
