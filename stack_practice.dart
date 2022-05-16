// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StackPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Stack Practice',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              Positioned(
                left: 120,
                top: 125,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.black,
                ),
              ), //
            ],
          ),
        ),
      ),
    );
  }
}
