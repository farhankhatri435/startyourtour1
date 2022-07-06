import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/bigcontainer.dart';

class ShowPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Theme.of(context).primaryColor,
          title: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 33),
            alignment: Alignment.centerRight,
            child: Text(
              'Posts',
              style: TextStyle(
                  color: Theme.of(context).primaryIconTheme.color,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          leading: Builder(builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.only(top: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 30, //IconTheme.of(context).size,
                onPressed: () => Navigator.pop(context),
              ),
            );
          }),
          elevation: 0,
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              Expanded(
                child: ListView(
                  children: [
                    BigContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    BigContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    BigContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    BigContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                  ],
                ),
              ),
            ])));
  }
}
