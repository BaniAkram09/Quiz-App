// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:firstapp/quizscreen2.dart';
import 'package:flutter/material.dart';

class QuizScreen3 extends StatefulWidget {
  @override
  State<QuizScreen3> createState() => _QuizScreen3State();
}

class _QuizScreen3State extends State<QuizScreen3> {
  final quest = 'How many toes do cats have?';

  final option1 = 'Twenty';

  final option2 = '20';

  final option3 = '12';

  final option4 = '18';

  final option5 = 'Eighteen';

  bool toggle1 = true;

  bool toggle2 = true;

  bool toggle3 = true;

  bool toggle4 = false;

  bool toggle5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(
            'Quiz 3',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          backgroundColor: Colors.grey[800],
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          // primary: toggle1
                          //     ? Colors.green
                          //     : null,
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
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Icon(Icons.adjust_rounded),
                        label: Text(
                          option5,
                          textScaleFactor: 1.2,
                        ),
                        style: OutlinedButton.styleFrom(
                          // primary: toggle1
                          //     ? Colors.green
                          //     : null,
                          side: toggle5
                              ? BorderSide(color: Colors.green, width: 5)
                              : null,
                          backgroundColor: Colors.amber[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment(-1, 0),
                        ),
                        onPressed: () {
                          toggle5 = true;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
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
                          toggle5 = false;
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
