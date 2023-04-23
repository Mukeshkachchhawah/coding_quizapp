import 'dart:ffi';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_application_1/useraccount.dart';

class OnBordScreen extends StatefulWidget {
  const OnBordScreen({Key? key}) : super(key: key);
  @override
  State<OnBordScreen> createState() => _OnBordScreenState();
}

class _OnBordScreenState extends State<OnBordScreen> {
  final controller = PageController;
  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              urlImage,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                    Center(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            // Container(
            //     height: 40,
            //     width: 400,
            //     color: Color.fromARGB(255, 255, 255, 255),
            //     child:
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         TextButton(onPressed: () {}, child: Text("Skip")),
            //         Center(),
            //         TextButton(onPressed: () {}, child: Text("Next")),
            //       ],
            //     ))
          ],
        ),
      );
//Main Code Start onBordScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
            ),
            child: PageView(
              children: [
                buildPage(
                    color: Colors.black,
                    urlImage: 'assets/reading.png',
                    title: 'Welcome \nto codding Knolwege',
                    subtitle:
                        'Find your quiz from multiple categories, \n choase your favorite one and just start'),
                buildPage(
                    color: Colors.black,
                    urlImage:
                        'assets/external-study-online-education-wanicon-flat-wanicon.png',
                    title: 'Codding Language',
                    subtitle:
                        'Learn for all languages in codding python, \n       C++, Java, Java Script and more'),
                buildPage(
                    color: Colors.black,
                    urlImage: 'assets/experimental-rocket-arcade.png',
                    title: 'Lets Start Codding Test',
                    subtitle:
                        'Keep practice quiz, we analyse your \n answers and give you feedbock'),
              ],
            ),
          )),
      bottomSheet: Container(
        color: Color.fromARGB(255, 22, 10, 185),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserAccount()));
                },
                child: Text(
                  "Let's go right away",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
