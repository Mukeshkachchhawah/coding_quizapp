// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen%20part%202/Quiz%20Page%20Question/c++/multiplequzi.dart';

import 'Quiz Page Question/c++/codequiz.dart';

class Boxdecoret extends StatefulWidget {
  const Boxdecoret({Key? key}) : super(key: key);

  @override
  State<Boxdecoret> createState() => _BoxdecoretState();
}

class _BoxdecoretState extends State<Boxdecoret> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 5, 2, 26),
      appBar: AppBar(
        title: Text("C++"),
        backgroundColor: Color.fromARGB(221, 5, 2, 26),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 170),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Select the Quiz Mode",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: 100,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CodeQuiz(
                                      id: 1,
                                      answer: 1,
                                      question: 'Qustion',
                                      option: [],
                                    )));
                      },
                      child: Center(
                          child: Text(
                        "Ture and False Qustion",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )))),
              Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  width: 100,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MultipleQuiz()));
                      },
                      child: Center(
                          child: Text(
                        "Multiple Choise Qustion",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))))
            ],
          )),
    );
  }
}
