import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  String text = '';
  FilterContainer({this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Theme.of(context).primaryIconTheme.color,
                      fontSize: 15),
                ),
              ),
            )));
  }
}
