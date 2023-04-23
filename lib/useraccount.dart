import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  bool get isSelectmale => true;

  set isSeletmale(bool isSeletmale) {}
  final EnterNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 45, 42, 88),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Creat account & join us",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Name',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        controller: EnterNameController),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  seletgender(),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 50, left: 80, right: 149),
                        child: Text(
                          "Male",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50, right: 0),
                        child: Text(
                          'Female',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  sumbitButton()
                ],
              ),
            ),
          ),
        ));
  }

  Widget sumbitButton() {
    return InkWell(
      onTap: () {
        print(EnterNameController);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => QuizHome(
                      entername: EnterNameController.text,
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Sumbit",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget seletgender() {
    return Row(
      children: [
        gender("Hi", isSelectmale, (s) {
          setState(() {
            isSeletmale = true;
          });
        }),
        gender("she", !isSelectmale, (s) {
          setState(() {
            isSeletmale = false;
          });
        })
      ],
    );
  }

  Widget gender(String name, bool isSelect, Function(bool isSelect) onTab) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            isSelect;
          },
          child: Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(left: 60, right: 130, top: 60),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/skin.png')),
            ),
          ),
        ),
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage('assets/male-user.gif')),
        //   ),
        //   child: Text("Male"),
        // ),
      ],
    );
    //  Padding(
    //   padding: const EdgeInsets.only(
    //     top: 100,
    //     left: 100,
    //   ),
    //   child: Column(
    //     children: [
    //       CircleAvatar(
    //         backgroundColor: isSelect ? Colors.green : Colors.yellow,
    //         radius: 30,
    //         child: IconButton(
    //             onPressed: () {
    //               onTab(isSelect);
    //             },
    //             icon: Icon(Icons.male)),
    //       )
    //     ],
    //   ),
    // );
  }
}
