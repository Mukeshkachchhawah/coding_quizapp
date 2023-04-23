import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen%20part%202/Quiz%20Page%20Question/pythonquiz/options.dart';
import 'package:flutter_application_1/screen%20part%202/Quiz%20Page%20Question/pythonquiz/questionwidget.dart';

class Multiple extends StatefulWidget {
  const Multiple({
    Key? key,
  }) : super(key: key);

  @override
  State<Multiple> createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  void optionQuestion() {
    setState(() {
      currentIndex = currentIndex + 1;
    });
    print(currentIndex++);
  }

  List _question = [
    {
      "qustion": "this number in smail",
      "asnwer": [
        {'option': '10'},
        {'option': '20'},
        {'option': '30'},
        {'option': '40'}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    {
      "qustion": "this number in big",
      "answer": [
        {'answerText': '10', "scor": false},
        {'answerText': '20', "scor": false},
        {'answerText': '30', "scor": false},
        {'answerText': '40', "scor": true}
      ]
    },
    // {
    //   "id": 1,
    //   "title": "Question 10 2+2",
    //   "options": {'3': false, '4': true, '5': false, '6': false},
    // },
    // {
    //   "id": 2,
    //   "title": "Question 10 2+8",
    //   "options": {'3': false, '4': true, '5': false, '10': true},
    // },
    // {
    //   "id": 3,
    //   "title": "Question 10 20+10",
    //   "options": {'30': true, '40': false, '50': false, '69': false},
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 13",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 14",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "15",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 16",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 17",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 18",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 19",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
    // {
    //   "id": 1,
    //   "qustion": "Question 20",
    //   "options": ["True , false"],
    //   "answer_index": 1
    // },
  ];
  int currentIndex = 0;

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("C++ Multiple Question"),
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 30, right: 25, left: 25, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Question ',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "${currentIndex + 1}  /20",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),

                // Note:- Question Marks number
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Marks 5",
                //       style: Theme.of(context).textTheme.headline6,
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Question(
                      _question[currentIndex]['questionText'],
                    ),
                  ],
                ),

                SizedBox(
                  height: 50,
                ),
                ...(_question[currentIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(optionQuestion, answer);
                }).toList(),
                // Answer(),
                // Answer(),
                // Answer(),
                // Answer(),
                SizedBox(
                  height: 10,
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
                            setState(() {
                              //   if (currentIndex == _question.length - 1) {
                              //     return;
                              //   } else {
                              //     setState(() {
                              //       currentIndex++;
                              //       isPressed = false;
                              //     });
                              //   }

                              //   showDialog(
                              //       context: context,
                              //       builder: (context) => ResultBox());
                            });
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
        ));
  }
}
