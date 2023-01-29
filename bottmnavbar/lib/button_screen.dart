// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  State<Button> createState() => _State();
}

class _State extends State<Button> {
  bool defaultverion = true;
  bool verion1 = false;
  bool verion2 = false;

  void _switch(bool visibility, String field) {
    setState(() {
      if (field == "default") {
        defaultverion = visibility;
      }
      if (field == "option1") {
        verion1 = visibility;
      }
      if (field == "option2") {
        verion2 = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verion1
              ? const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'RockSalt',
                  ),
                )
              : new Container(),
          defaultverion
              ? const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Cuprum',
                  ),
                )
              : new Container(),
          verion2
              ? const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Bangers',
                  ),
                )
              : new Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.fromLTRB(40, 15, 40, 15)),
                  onPressed: () {
                    _switch(true, "option1");
                    _switch(false, "default");
                    _switch(false, "option2");
                  },
                  child: Text(
                    'Font 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cuprum',
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.fromLTRB(40, 15, 40, 15)),
                  onPressed: () {
                    _switch(false, "default");
                    _switch(false, "option1");
                    _switch(true, "option2");
                  },
                  child: Text(
                    'Font 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cuprum',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
