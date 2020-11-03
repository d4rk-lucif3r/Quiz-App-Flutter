import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int score;
  String get resultPhrase {
    var resultText;
    if (score <= 8)
      resultText = 'Your\'re Awesome!!!!';
    else if (score >= 12)
      resultText = 'Ah you suck!';
    else if (score > 8 && score < 12) resultText = 'You\'re decent';
    return resultText;
  }

  Result({@required this.reset, @required this.score});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextWidget(resultPhrase),
          TextWidget("Your Score : $score"),
          ButtonWidget("Retry", reset),
        ]);
  }
}
