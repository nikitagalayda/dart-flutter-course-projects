import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz(this.questionIndex, this.questions, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        // The reason for double brackets [][] is because the first bracket acess the map,
        // while the second bracket will get the value for the key 'answer'
        // questions[_questionIndex] <-- returns map
        // questions[_questionIndex]['answer'] <-- returns value for key answer.
        // Spread operator turns a list of items into individual items
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        })
      ],
    );
  }
}
