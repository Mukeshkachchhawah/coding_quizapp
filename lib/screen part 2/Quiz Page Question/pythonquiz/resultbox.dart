import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [Text("Scor")],
        ),
      ),
    );
  }
}
