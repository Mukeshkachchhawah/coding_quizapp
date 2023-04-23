import 'package:flutter/material.dart';

class Java extends StatefulWidget {
  const Java({Key? key}) : super(key: key);

  @override
  State<Java> createState() => _JavaState();
}

class _JavaState extends State<Java> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 5, 2, 26),
      appBar: AppBar(
        title: Text("Java"),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CodeQuiz()));
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => MultipleQuiz()));
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
