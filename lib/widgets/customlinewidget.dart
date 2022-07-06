import 'package:flutter/material.dart';

class CustomLineWidget extends StatefulWidget {
  double height;
  CustomLineWidget({this.height});
  @override
  _CustomLineWidgetState createState() => _CustomLineWidgetState();
}

class _CustomLineWidgetState extends State<CustomLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: Colors.grey[400],
        height: widget.height,
        width: double.infinity,
      ),
    );
  }
}
