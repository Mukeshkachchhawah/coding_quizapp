import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen%20part%202/Quiz%20Page%20Question/c++/answer.dart';

class MultipleQuiz extends StatefulWidget {
  const MultipleQuiz({
    Key? key,
  }) : super(key: key);

  @override
  State<MultipleQuiz> createState() => _MultipleQuizState();
}

class _MultipleQuizState extends State<MultipleQuiz> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text("C++ Multiple Question"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Question',
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
                    Text(
                      "Question",
                      //     sample_data[currentIndex]['qustion'],
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Color.fromARGB(255, 253, 0, 0)),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                options(),
                options(),
                options(),
                options(),
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
        ));
  }

  Widget options() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 235, 235),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "answer",
              style: TextStyle(color: Colors.black),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
