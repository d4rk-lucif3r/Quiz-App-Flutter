import 'package:flutter/material.dart';
import './questionValue.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int len = question.length;
  bool flag = false;
  var _totalscore = 0;

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My APP'),
              backgroundColor: Colors.black,
            ),
            body: _questionIndex < len
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    reset: _reset,
                    score: _totalscore,
                  )));
  }
}
