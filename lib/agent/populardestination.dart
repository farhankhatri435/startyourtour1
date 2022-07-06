import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/bigcontainer.dart';

class PopularDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var searchc = TextEditingController();
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
              'Popular Destinations',
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  controller: searchc,
                  cursorColor: Theme.of(context).primaryIconTheme.color,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
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
          ]),
        ));
  }
}
