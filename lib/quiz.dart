import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './questionValue.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  Quiz({
    @required this.answerQuestion,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextWidget(
          question[questionIndex]['questionText'],
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return ButtonWidget(
              answer['text'],
              () => answerQuestion(
                    answer['score'],
                  ));
        }).toList(),
      ],
    );
  }
}
