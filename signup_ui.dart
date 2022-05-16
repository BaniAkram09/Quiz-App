// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Signupui extends StatelessWidget {
  const Signupui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.green,
              padding: EdgeInsets.fromLTRB(0, 60, 10, 0),
              child: Column(
                children: [
                  Text('Recipe',
                      style: TextStyle(
                          fontFamily: 'GreatVibes',
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
                Positioned(
                  top: -40,
                  child: Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                          offset: Offset(6.0, 5.0),
                        ),
                      ],
                    ),
                    child: Container(
                      // color: Colors.amber,
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                ),
                                hintText: ' Name',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.mail_rounded,
                                  color: Colors.grey,
                                ),
                                hintText: ' Email',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.security_rounded,
                                  color: Colors.grey,
                                ),
                                hintText: ' Password',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.call,
                                  color: Colors.grey,
                                ),
                                hintText: ' Mobile',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 200, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: StadiumBorder(),
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
