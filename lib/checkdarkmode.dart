import 'package:flutter/material.dart';

bool darkMode = true;

class Changedarkmode extends StatefulWidget {
  @override
  _ChangedarkmodeState createState() => _ChangedarkmodeState();
}

class _ChangedarkmodeState extends State<Changedarkmode> {
  @override
  void changedarkmode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  Widget build(BuildContext context) {
    return null;
  }
}
