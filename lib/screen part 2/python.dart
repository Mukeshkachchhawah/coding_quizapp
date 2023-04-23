import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen%20part%202/Quiz%20Page%20Question/pythonquiz/truefalse.dart';

import 'Quiz Page Question/pythonquiz/multiple.dart';

class Python extends StatefulWidget {
  const Python({Key? key}) : super(key: key);

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 5, 2, 26),
      appBar: AppBar(
        title: Text("Python"),
        backgroundColor: Color.fromARGB(221, 5, 2, 26),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 50),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  'assets/python--v1.png',
                ))),
                child: Center(
                  child: Text(
                    "Select the Quiz Mode",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
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
                                builder: (context) => TrueFalse()));
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
                                builder: (context) => Multiple()));
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
