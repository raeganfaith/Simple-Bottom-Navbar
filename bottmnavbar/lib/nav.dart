// ignore_for_file: unused_import, implementation_imports, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields

import 'package:flutter/src/widgets/container.dart';
import 'package:bottmnavbar/home_screen.dart';

import 'package:flutter/material.dart';

import 'button_screen.dart';
import 'close_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _wideOptions = <Widget>[
    Home(),
    Button(),
    Close(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Midterm Exam'),
      ),
      body: Center(
        child: _wideOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_right_sharp),
            label: ('Next'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_sharp),
            label: ('Close'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
