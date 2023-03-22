import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'question': 'what\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 6},
        {'text': 'Pink', 'score': 8},
        {'text': 'Black', 'score': 10},
      ]
    },
    {
      'question': 'what\'s your favorite animal?',
      'answer': [
        {'text': 'Monkey', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Dog', 'score': 7},
        {'text': 'Cat', 'score': 10},
      ]
    },
    {
      'question': 'what\'s your favorite car?',
      'answer': [
        {'text': 'Porche', 'score': 1},
        {'text': 'Mustang', 'score': 4},
        {'text': 'Ferrari', 'score': 5},
        {'text': 'Agera', 'score': 10},
      ]
    },
    {
      'question': 'what\'s your favorite actor?',
      'answer': [
        {'text': 'Will Smith', 'score': 1},
        {'text': 'Tom Holland', 'score': 4},
        {'text': 'RDJ', 'score': 5},
        {'text': 'Chris Evans', 'score': 10},
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
