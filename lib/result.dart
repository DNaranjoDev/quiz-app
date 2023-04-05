import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, this.resetHandler, {super.key});
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = ' Pretty likeable!';
    } else if (resultScore <= 18) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'Wow! such a megamind!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Colors.blue), // Background button color
              foregroundColor:
                  MaterialStateProperty.all(Colors.white), // Font color
            ),
            onPressed: resetHandler,
            child: const Text('I want to do it again!'),
          ),
        ],
      ),
    );
  }
}
