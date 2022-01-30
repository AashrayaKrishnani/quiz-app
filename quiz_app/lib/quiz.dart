import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map<Object, Object> data;
  final Function changeQuestion;

  Quiz({required this.data, required this.changeQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(data["question"] as String),
        ...(data["answers"] as List<Map<Object, Object>>).map((answer) =>
            Answer(() => changeQuestion(answer["score"] as int),
                answer["text"] as String))
      ],
    );
  }
}
