// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, no_logic_in_create_state, dead_code, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Close extends StatefulWidget {
  @override
  State<Close> createState() => _Close();

  _Close() {
    SystemNavigator.pop();
  }
}
