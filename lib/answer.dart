import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String btText;
  final Function function;
  ButtonWidget(this.btText, this.function);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.yellow,
        child: Text(btText),
        onPressed: function,
        elevation: 15  ,
      ),
    );
  }
}
