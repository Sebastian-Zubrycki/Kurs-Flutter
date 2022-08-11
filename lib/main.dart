import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favoutite color?',
        'anwers': ['Black', 'Red', 'Green', 'White ']
      },
      {
        'questionText': 'What\'s your favoutite animal?',
        'anwers': ['Rabbit', 'Bee', 'Cat', 'Dog ']
      },
      {
        'questionText': 'What\'s your favoutite food?',
        'anwers': ['Pizza', 'Burger', 'Burito', 'Sushi ']
      },
    ];
    // var questions2 = {
    //   'What\'s your favoutite color?': ['Black', 'Red', 'Green', 'White '],
    //   'What\'s your favoutite animal?': ['Rabbit', 'Bee', 'Cat', 'Dog '],
    //   'What\'s your favoutite food?': ['Pizza', 'Burger', 'Burito', 'Sushi '],
    // };
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'].toString(),
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
