// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

var questions = [
  {
    'questionText': 'What is your Fav Color',
    'answer': ['Red', 'Black', 'Blue', 'Pink']
  },
  {
    'questionText': 'What is your dish',
    'answer': ['Rosh', 'Haleem', 'Nihari', 'Biryani']
  },
  {
    'questionText': 'Who are you',
    'answer': ['Robot', 'Human']
  },
];

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("my quiz app"),
        backgroundColor: Colors.amber,
      ),
      body: _questionIndex < questions.length
          ? Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Question(
                  questions[_questionIndex]['questionText'] as String,
                ),
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }),
              ],
            )
          : Center(
              child: Text("You did it"),
            ),
    ));
  }
}
