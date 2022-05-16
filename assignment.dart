// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toggle = false;
  Icon customIcon = const Icon(
    Icons.search,
    size: 30,
    color: Colors.white,
  );
  Widget customSearchBar = const Text(
    'AppBar',
    textAlign: TextAlign.start,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   title: customSearchBar,
      //   automaticallyImplyLeading: false,
      //   // actions: [
      //   //   InkWell(
      //   //     onTap: () {
      //   //       setState(() {
      //   //         if (customIcon.icon == Icons.search) {
      //   //           customIcon = const Icon(Icons.cancel);
      //   //           customSearchBar = const ListTile(
      //   //             leading: Icon(
      //   //               Icons.search,
      //   //               color: Colors.white,
      //   //               size: 28,
      //   //             ),
      //   //             title: TextField(
      //   //               decoration: InputDecoration(
      //   //                 hintText: 'Search...',
      //   //                 hintStyle: TextStyle(
      //   //                   color: Colors.white,
      //   //                   fontSize: 18,
      //   //                   fontStyle: FontStyle.italic,
      //   //                 ),
      //   //                 border: InputBorder.none,
      //   //               ),
      //   //               style: TextStyle(
      //   //                 color: Colors.white,
      //   //               ),
      //   //             ),
      //   //           );
      //   //         } else {
      //   //           customIcon = const Icon(Icons.search);
      //   //           customSearchBar = const Text('AppBar');
      //   //         }
      //   //       });
      //   //     },
      //   //     child: Container(

      //   //       child: customIcon,
      //   //     ),
      //   //   )
      //   // ],
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
          child: Column(
            children: [
              toggle
                  ? ListTile(
                      leading: InkWell(
                        onTap: () {
                          toggle = false;
                          setState(() {});
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        customSearchBar,
                        InkWell(
                            onTap: () {
                              toggle = true;
                              setState(() {});
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: customIcon,
                            ))
                      ],
                    ),
              Expanded(
                child: Container(
                  //height: 100,
                  //width: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Container(
                      color: Colors.blue[900],
                      child: Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Container(
                                  color: Colors.blue,
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              color: Colors.brown,
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Container(
                          color: Colors.purple,
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Search...', border: InputBorder.none),
            ),
          )),
    );
  }
}






