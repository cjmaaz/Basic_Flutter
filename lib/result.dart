import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int finalScore;
  final void Function() resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase{
    return 'You did it and your score is ${finalScore}';
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
            style: TextStyle(fontSize: 36,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text('Reset'),)
        ],
      )
    );
  }
}