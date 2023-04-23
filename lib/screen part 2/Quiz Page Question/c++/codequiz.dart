import 'dart:ui';

import 'package:flutter/material.dart';

// T = true and F = false Question code

class CodeQuiz extends StatefulWidget {
  final int id, answer;
  final String question;
  final List<String> option;

  const CodeQuiz(
      {Key? key,
      required this.question,
      required this.answer,
      required this.id,
      required this.option})
      : super(key: key);

  @override
  State<CodeQuiz> createState() => _CodeQuizState();
}

class _CodeQuizState extends State<CodeQuiz> {
  List sample_data = [
    {
      "id": 1,
      "qustion": "kmjbfkjd bfksdbfk 1",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": " mbdmgbsj dgfjsfg bkjdfdblksajhddfksdjhg  2",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 3",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 4",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 5",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 6",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 7",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 8",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 9",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 10",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 11",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 12",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 13",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 14",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "15",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 16",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 17",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 18",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 19",
      "options": ["True , false"],
      "answer_index": 1
    },
    {
      "id": 1,
      "qustion": "Question 20",
      "options": ["True , false"],
      "answer_index": 1
    },
  ];

  /// [] list
  /// {} map
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: Text("C++"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, right: 25, left: 25, bottom: 30),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                text: "Question ",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.black),
                children: [
                  TextSpan(
                    text: "${currentIndex + 1}/20",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Marks 5",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  sample_data[currentIndex]['qustion'],
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Color.fromARGB(255, 253, 0, 0)),
                )
              ],
            ),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'True',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('False',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        currentIndex--;
                        setState(() {});
                      },
                      child: Text(
                        "Back Question",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        currentIndex++;
                        setState(() {});
                      },
                      child: Text(
                        "Next Question",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Widget option() {
  //   return Container(
  //     margin: EdgeInsets.all(15),
  //     padding: EdgeInsets.all(20),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(25),
  //         border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
  //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //       Text(
  //         "Answer 1",
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       Container(
  //         height: 25,
  //         width: 25,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(50),
  //             border: Border.all(color: Colors.black)),
  //       )
  //     ]),
  //   );
  // }
}
