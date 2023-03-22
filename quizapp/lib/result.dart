import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are aswesome and innocent.';
    } else if (resultScore <= 12) {
      resultText = 'Pretty like=able';
    } else if (resultScore <= 16) {
      resultText = 'You are strange ... ?!';
    } else {
      resultText = 'You are soo bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuiz, child: Text('Restart Quiz..'))
      ]),
    );
  }
}
