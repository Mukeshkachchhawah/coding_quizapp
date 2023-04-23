import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/onbordscreen.dart';

class SplaceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IniState();
  }
}

class IniState extends State<SplaceScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnBordScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            child: Text(
              "Quiz App",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
