import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Type Annotation: List<Map<String, Object>>
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [{'text':'Black', 'score':10}, {'text':'Red', 'score':10}, {'text':'Green', 'score':10}, {'text':'White', 'score':10}]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [{'text':'Snake', 'score':10}, {'text':'Rabbit', 'score':10}, {'text':'Cat', 'score':10}, {'text':'Dog', 'score':10}]
    },
    {
      'questionText': 'What\'s your favourite book?',
      'answers': [{'text':'Annihilation of Caste', 'score':10}, {'text':'Notes of Intolerance', 'score':10}, {'text':'The Anarchy', 'score':10}, {'text':'Last Mughal', 'score':10}]
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    _totalScore += score;
    print('Answer Chosen');
  }
  void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
        ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex)
        : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
