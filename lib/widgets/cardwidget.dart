import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  Widget childWidget;
  double height;
  CardWidget({this.childWidget, this.height = 60.0});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 4), // changes position of shadow
            )
          ]),
      //boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.black12)]),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
      child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: widget.childWidget),
    );
  }
}
