// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      handleAnswer; // Avariable to store reference to a function! :D

  final String answerText;

  const Answer(this.handleAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: handleAnswer,
      ),
    );
  }
}
