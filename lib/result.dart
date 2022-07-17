import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int finalScore;

  Result(this.finalScore);

  String get resultPhrase{
    return 'You did it and your score is ${finalScore}';
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: Text(resultPhrase,
        style: TextStyle(fontSize: 36,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}