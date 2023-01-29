// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, duplicate_ignore, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  String text1 = ' ';
  String text2 = ' ';
  String text3 = ' ';
  String text4 = ' ';
  String text5 = ' ';
  String text6 = ' ';

  void color1() {
    setState(() {
      text1 = 'BLUE';
    });
  }

  void color2() {
    setState(() {
      text2 = 'RED';
    });
  }

  void color3() {
    setState(() {
      text3 = 'YELLOW';
    });
  }

  void color4() {
    setState(() {
      text4 = 'GREEN';
    });
  }

  void color5() {
    setState(() {
      text5 = 'GREY';
    });
  }

  void color6() {
    setState(() {
      text6 = 'PURPLE';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    child: SizedBox(
                      height: 200.0,
                      width: 200.0,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: color1,
                          child: Text(
                            text1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: SizedBox(
                      height: 200.0,
                      width: 200.0,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: color2,
                          child: Text(
                            text2,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: color3,
                            child: Text(
                              text3,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: color4,
                            child: Text(
                              text4,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: color5,
                            child: Text(
                              text5,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: color6,
                            child: Text(
                              text6,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Home extends StatelessWidget {
  
// }
