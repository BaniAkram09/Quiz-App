// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:firstapp/quizscreen2.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class QuizScreen1 extends StatefulWidget {
  @override
  State<QuizScreen1> createState() => _QuizScreen1State();
}

class _QuizScreen1State extends State<QuizScreen1> {
  String quest = 'What is the name of the capital of Pakistan?';

  String option1 = 'Karachi';

  String option2 = 'Lahore';

  String option3 = 'Faisalabad';

  String option4 = 'Islamabad';

  bool toggle1 = true;
  bool toggle2 = true;
  bool toggle3 = true;
  bool toggle4 = false;


  void func(bool toggle, String option) {
    setState(() {
      if (toggle == true) {
        OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.green, width: 5),
        );
      } else {
        OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.red, width: 5),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(
            'Quiz 1',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: Colors.grey[900],
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen2()),
                );
              },
              icon: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
        body: Container(
          color: Colors.grey[900],
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Column(
                  children: [
                    Text(
                      quest,
                      style: TextStyle(
                          color: Colors.green[400],
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Choose your answer from below',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          option1,
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          side: toggle1
                              ? null
                              : BorderSide(color: Colors.red, width: 5),
                          backgroundColor: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                        onPressed: () {
                          toggle1 = false;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          toggle2 = false;
                          setState(() {});
                        },
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          option2,
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          side: toggle2
                              ? null
                              : BorderSide(color: Colors.red, width: 5),
                          backgroundColor: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          toggle3 = false;
                          setState(() {});
                        },
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          option3,
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          side: toggle3
                              ? null
                              : BorderSide(color: Colors.red, width: 5),
                          backgroundColor: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          option4,
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          side: toggle4
                              ? BorderSide(color: Colors.green, width: 5)
                              : null,
                          backgroundColor: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                        onPressed: () {
                          toggle4 = true;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          'Reset',
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.red,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                        onPressed: () {
                          toggle1 = true;
                          toggle2 = true;
                          toggle3 = true;
                          toggle4 = false;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
