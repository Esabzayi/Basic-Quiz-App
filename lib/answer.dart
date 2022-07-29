// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answer;

  Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
        ),
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }
}
