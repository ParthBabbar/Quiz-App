import 'package:flutter/material.dart';
import 'package:quizz_app/startscreen.dart';
import 'package:quizz_app/questionscreen.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(chooseAnswer: chooseAnswer);
    }
    if (activeScreen == 'result-screen') {
      screenWidget = resultScreen(
        chosenAnswers: selectedAnswers,
        restartPress: restart,
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            //backgroundColor: Color.fromARGB(255, 64, 26, 166),
            body: Container(
          color: Color.fromARGB(255, 84, 21, 147),
          child: screenWidget,
        )));
  }
}
