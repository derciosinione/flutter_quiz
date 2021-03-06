import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function fnResetQuiz;
  const Result(this.resultScore, this.fnResetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 30) {
      resultText = 'You were good in this game!';
    } else if (resultScore <= 40) {
      resultText = 'Pretty Good!';
    } else {
      resultText = 'You are the best!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(
            'Final Score: $resultScore',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
          ),
          TextButton(
            onPressed: () => fnResetQuiz(),
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
