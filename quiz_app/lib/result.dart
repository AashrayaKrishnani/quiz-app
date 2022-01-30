import 'dart:math';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback reset;

  Result({required this.score, required this.reset});

  Color get color {
    Color color = Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255), Random().nextDouble());

    return color;
  }

  String get resultText {
    String resultText = '';
    int temp = ((score * (Random().nextInt(10) + 4) - 20) ~/
        (Random().nextInt(4) * Random().nextInt(5) + 5));

    switch (temp) {
      case -1:
        resultText = 'Looks like you messed up! 😂';
        break;
      case -2:
        resultText = 'Having fun eh? 😁';
        break;
      case -3:
        resultText = 'You are pretty Nasty! 😱😆';
        break;
      case 0:
        resultText = 'Better Luck Next Time! 😊';
        break;
      case 1:
        resultText = 'Yay you survived! 😆';
        break;
      case 2:
        resultText = 'Kudos bud! 😌';
        break;
      case 3:
        resultText = 'You did Great!! 😉';
        break;
      case 4:
        resultText = 'You are Pretty Sensible! 👽';
        break;
      case -4:
        resultText = 'I\'m out of words XD';
        break;
      case 5:
        resultText = 'Going good eh? 😉';
        break;
      case -5:
        resultText = 'Fabulous, no? XD';
        break;

      default:
        resultText = 'You sir/ma\'am, have surpassed my expectations 😊';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              resultText,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Score: ' + score.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 13,
                  color: Colors.amber,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: reset,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                child: const Text(
                  'Play Again! 🎮',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 55, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '✨ Color for you! ✨',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.amber, fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton(
                      backgroundColor: color,
                      onPressed: null,
                      tooltip: color.toString(),
                    ),
                  )
                ],
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
