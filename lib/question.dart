import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String questionText;
  TextWidget(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        color: Colors.red,
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
