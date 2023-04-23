import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final String answerText;
  final Color answerColor;

  Answer({required this.answerColor, required this.answerText});

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  final List<String> Answer = ["a", 'b'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: widget.answerColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.answerText,
          style: TextStyle(color: Colors.black),
        ),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black)),
        )
      ]),
    );
  }
}
