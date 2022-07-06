import 'package:flutter/material.dart';

class ExploreBuilder extends StatefulWidget {
  @override
  _ExploreBuilderState createState() => _ExploreBuilderState();
}

class _ExploreBuilderState extends State<ExploreBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(
                  'assets/ab.jpg',
                  fit: BoxFit.fitHeight,
                  height: 250,
                  width: MediaQuery.of(context).size.width / 3.4,
                ),
              ),
            ),
          ),
          itemCount: 3,
        ));
  }
}
