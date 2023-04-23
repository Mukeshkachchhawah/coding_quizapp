import 'package:flutter/material.dart';

class TrueFalse extends StatefulWidget {
  const TrueFalse({Key? key}) : super(key: key);

  @override
  State<TrueFalse> createState() => _TrueFalseState();
}

class _TrueFalseState extends State<TrueFalse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python"),
      ),
    );
  }
}
