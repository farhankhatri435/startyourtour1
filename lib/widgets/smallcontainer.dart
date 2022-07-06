import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  String imageroute = '';
  String text = '';
  SmallContainer({this.imageroute, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageroute), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15.0),
              ),
              width: 140,
              height: 70,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            )));
  }
}
