import 'dart:math';

import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp> {
  // ignore: prefer_final_fields
  var _questions = [
    {
      "question": "What's your favourite Color?",
      "answers": [
        {
          "text": "Blue",
          "score": 4,
        },
        {
          "text": "Yellow",
          "score": 3,
        },
        {
          "text": "Green",
          "score": 2,
        },
        {
          "text": "Red",
          "score": 1,
        },
      ]
    },
    {
      "question": "Choose?",
      "answers": [
        {
          "text": "Black",
          "score": 1,
        },
        {
          "text": "White",
          "score": 3,
        },
      ]
    },
    {
      "question": "2a^2 + 2b^2 = ?",
      "answers": [
        {
          "text": "(a-b)^2",
          "score": 0,
        },
        {
          "text": "(a+b)^2",
          "score": 0,
        },
        {
          "text": "(a+b)^2 + (a-b)^2",
          "score": 0,
        },
        {
          "text": "-(a+b)^2 + (a-b)^2",
          "score": 4,
        },
      ]
    },
    {
      "question": "Who was the first human to walk on the moon?",
      "answers": [
        {
          "text": "Her",
          "score": 2,
        },
        {
          "text": "Michael Jackson",
          "score": 3,
        },
        {
          "text": "Him",
          "score": 4,
        },
        {
          "text": "Me",
          "score": 1,
        },
      ]
    },
    {
      "question": "What is wrong?",
      "answers": [
        {
          "text": "Everything",
          "score": 20,
        },
        {
          "text": "Nothing",
          "score": 4,
        },
        {
          "text": "This Quiz",
          "score": -5,
        },
        {
          "text": "Everything Except this Quiz",
          "score": 10,
        },
      ]
    },
    {
      "question": "How are you feeling today?",
      "answers": [
        {
          "text": "Bananas!",
          "score": -5,
        },
        {
          "text": "Great",
          "score": 3,
        },
        {
          "text": "Weird",
          "score": 2,
        },
        {
          "text": "Meh",
          "score": 8,
        },
      ]
    },
    {
      "question": "Choose?",
      "answers": [
        {
          "text": "Stark",
          "score": 4,
        },
        {
          "text": "Rogers",
          "score": 3,
        },
        {
          "text": "Romanoff",
          "score": 1,
        },
        {
          "text": "Parker",
          "score": 4,
        },
      ]
    },
    {
      "question": "Which is bigger: 100^99 + 99^99  OR 101^99?",
      "answers": [
        {
          "text": "Thanos",
          "score": -10,
        },
        {
          "text": "first one",
          "score": 2,
        },
        {
          "text": "101^99",
          "score": 5,
        },
        {
          "text": "Math is Stupid!",
          "score": 10,
        },
      ]
    },
    {
      "question": "Why did Windows skip '9'?",
      "answers": [
        {
          "text": "iPhone8 -> iPhoneX",
          "score": 4,
        },
        {
          "text": "It's evil, duh!",
          "score": -5,
        },
        {
          "text": "789",
          "score": 10,
        },
        {
          "text": "Marketing dude!",
          "score": 15,
        },
      ]
    },
    {
      "question": "When will this end?",
      "answers": [
        {
          "text": "After this",
          "score": 7,
        },
        {
          "text": "(After)^2 this",
          "score": 15,
        },
        {
          "text": "(After)^3 this",
          "score": 3,
        },
        {
          "text": "The hell are these options! XD",
          "score": -10,
        },
      ]
    },
    {
      "question": "What do you want?",
      "answers": [
        {
          "text": "Pizza",
          "score": 4,
        },
        {
          "text": "Lamborghini",
          "score": 2,
        },
        {
          "text": "Nothing",
          "score": 10,
        },
        {
          "text": "This to End",
          "score": -100,
        },
        {
          "text": "Everything",
          "score": 20,
        },
      ]
    },
  ];
  int _questionNum = 0;
  int _score = 0;
  Color _appBarColor = Colors.blue;
  String _appBarText = 'Welcome to the Quizz! 🥳';
  String _button1 = "**";
  MainAxisAlignment _colAlignment = MainAxisAlignment.start;
  bool firstTime = true;

  void _changeQuestion(int score) {
    setState(() {
      _score += score;
      _questionNum += Random().nextInt(3) + 1;
      if (_questionNum >= _questions.length) {
        _appBarColor = Colors.amber;
        _appBarText = 'You Did it Bud! 🏆';
        _button1 = '^^';
        _colAlignment = MainAxisAlignment.center;
      }
    });
  }

  void _reset() {
    setState(() {
      _questions.shuffle();
      _questionNum = 0;
      _appBarColor = Colors.blue;
      _appBarText = 'Time for the Quiz! 😎';
      _button1 = '**';
      _score = 0;
      _colAlignment = MainAxisAlignment.start;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      _questions.shuffle();
      firstTime = false;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            _appBarText,
            textAlign: TextAlign.center,
            textWidthBasis: TextWidthBasis.longestLine,
          ),
          backgroundColor: _appBarColor,
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: _colAlignment,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 20, 1, 0),
                  child: _questionNum < _questions.length
                      ? Quiz(
                          data: _questions[_questionNum],
                          changeQuestion: _changeQuestion,
                        )
                      : Result(
                          score: _score,
                          reset: _reset,
                        ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  backgroundColor: _appBarColor,
                  child: Text(
                    _button1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    if (_button1 == "**") {
                      _questionNum = _questions.length - 1;
                      _changeQuestion(_score);
                    } else if ("^^" == _button1) {
                      _reset();
                    }
                  },
                  shape: const CircleBorder(),
                  elevation: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
