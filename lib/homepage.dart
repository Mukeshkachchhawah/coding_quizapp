import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen%20part%202/boxdecoret.dart';
import 'package:flutter_application_1/screen%20part%202/dart.dart';
import 'package:flutter_application_1/screen%20part%202/java.dart';
import 'package:flutter_application_1/screen%20part%202/javascrip.dart';
import 'package:flutter_application_1/screen%20part%202/php.dart';
import 'package:flutter_application_1/screen%20part%202/python.dart';

class QuizHome extends StatefulWidget {
  final String entername;
  const QuizHome({Key? key, required this.entername}) : super(key: key);

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 4, 44),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 6, 51),
          title: Text("Pro Quiz App"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Boxdecoret()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "C++",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Python()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Python",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Java()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "JAVA",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => JavaScrip()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Java Scrip",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dart()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Dart",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                height: 70,
                width: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Php()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "PHP",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
