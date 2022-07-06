import 'package:flutter/material.dart';

class LineWidget extends StatefulWidget {
  @override
  _LineWidgetState createState() => _LineWidgetState();
}

class _LineWidgetState extends State<LineWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: Colors.grey,
        height: 0.5,
        width: double.infinity,
      ),
    );
  }
}
