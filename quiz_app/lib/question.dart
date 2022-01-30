// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // 'final' since StatelessWidgets don't change without a rebuild anyway so no point in chaning it's value internally
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // By default the Text() class will only take as much horizontal space as required,
    // hence won't center fully if it has less text.To work around this,
    // we wrap it in a Container() with width: double.infinity to make it occupy as
    // much width as possible and then align properly! :D
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
