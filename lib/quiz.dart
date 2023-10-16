import 'package:flutter/material.dart';
import 'package:quizzler/data/questions.dart';
import 'package:quizzler/questions_screen.dart';
import 'package:quizzler/results_screen.dart';
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
  // final because it won't be reassigned, data is just going to be added to it.
  List<String> selectedAnswers = []; 
  var activeScreen = 'start-screen'; //easier to just have it be text

  void switchScreen() {
    setState(() {
      // selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz(){
    setState(() {
      // reset the number of answered questions and return to 
      // first question screen
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen'){
      screenWidget =  QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, restartQuiz: restartQuiz,);
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
