// ignore_for_file: prefer_const_constructors
//import 'package:firstapp/assignment.dart';
import 'package:firstapp/signup_ui.dart';
import 'package:firstapp/login_ui.dart';
import 'package:flutter/material.dart';
void main() {
  //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.green,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.light,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginui(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("CALCULATOR"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
              controller: controller,
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: '0'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50)),
          Spacer(),
          Container(
            height: 400,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            controller.text = '1' + controller.text;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(
                              child: Text("1"),
                            ),
                            height: 100,
                            // width: 70,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blueAccent))),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            controller.text = '2' + controller.text;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(child: Text("2")),
                            height: 100,
                            // width: 70,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blueAccent))),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            controller.text = '3' + controller.text;
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(child: Text("3")),
                            height: 100,
                            // width: 70,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blueAccent))),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            controller.text = '';
                          });
                        },
                        child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(child: Text("C")),
                            height: 100,
                            // width: 70,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                border:
                                    Border.all(color: Colors.blueAccent))),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          controller.text =
                                              '4' + controller.text;
                                        });
                                      },
                                      child: Container(
                                          height: 100,
                                          padding: EdgeInsets.all(25),
                                          child: Center(child: Text("4")),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent))),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          controller.text =
                                              '5' + controller.text;
                                        });
                                      },
                                      child: Container(
                                          height: 100,
                                          padding: EdgeInsets.all(25),
                                          child: Center(child: Text("5")),
                                          // height: 70,
                                          // width: 70,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent))),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          controller.text =
                                              '6' + controller.text;
                                        });
                                      },
                                      child: Container(
                                          height: 100,
                                          padding: EdgeInsets.all(25),
                                          child: Center(child: Text("6")),
                                          // height: 70,
                                          // width: 70,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent))),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        controller.text =
                                            '7' + controller.text;
                                      });
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(25),
                                        child: Center(child: Text("7")),
                                        height: 100,
                                        width: 98,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent))),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          controller.text =
                                              '8' + controller.text;
                                        });
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(25),
                                          child: Center(child: Text("8")),
                                          height: 100,
                                          // width: 70,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent))),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          controller.text =
                                              '9' + controller.text;
                                        });
                                      },
                                      child: Container(
                                          padding: EdgeInsets.all(25),
                                          child: Center(child: Text("9")),
                                          height: 100,
                                          // width: 70,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blueAccent))),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        controller.text =
                                            '0' + controller.text;
                                      });
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(25),
                                        child: Center(child: Text("0")),
                                        height: 100,
                                        width: 292,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              controller.text = '+' + controller.text;
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.all(25),
                              child: Center(child: Text("+")),
                              width: 97,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border:
                                      Border.all(color: Colors.blueAccent))),
                        ),
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
