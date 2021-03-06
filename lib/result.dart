import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You're awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable!";
    } else if (resultScore <= 16) {
      resultText = "You're .... Strange?!";
    } else {
      resultText = "You're so Bad!";
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 24),
            ),
            textColor: Colors.green,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
