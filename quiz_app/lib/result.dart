import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are a softie!';
    } else if (resultScore <= 12) {
      resultText = 'You aight!';
    } else if (resultScore > 20) {
      resultText = 'You are a bit edgy eh?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Start Over'),
            textColor: Colors.indigo,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
