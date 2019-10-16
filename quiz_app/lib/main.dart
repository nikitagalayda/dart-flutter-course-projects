import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// Notes
// 1. Good practice to write "@ovveride" when overriding a function, for clarity.
// 2. Put a comma after every closing parenthesis for easier formatting.
// 3."_" in front of class name means that class should only be usable inside this file (private).
// 4. Write type if just declaring, use var when declaring + defining. (ex int a; | var a = 5;).
// 5. final = runtime constant.
// 5a. At runtime, an initial, dynamic value can be assigned, thereafter, the property/variable can't be changed again.
// 6. const = compile time constant.
// 6a. const myVar = myValue makes constant variable (cannot be reassigned).
// 6b. var myVar = const myValue ... makes constant value (myVar can be reassigned, but cannot modify myValue).

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// State class. State<MyApp> points to the class to which
// this state belongs.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Lion', 'score': 10},
        {'text': 'Wolf', 'score': 5},
        {'text': 'Cat', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Fortnite', 'score': 10},
        {'text': 'Dota 2', 'score': 5},
        {'text': 'WoW', 'score': 3},
        {'text': 'Overwatch', 'score': 1},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questionIndex, _questions, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
