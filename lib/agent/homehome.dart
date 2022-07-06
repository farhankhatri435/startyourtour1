import 'package:flutter/material.dart';
import 'package:startyourtour/agent/populardestination.dart';
import 'package:startyourtour/agent/showpost.dart';
import 'package:startyourtour/widgets/bigcontainer.dart';
import 'package:startyourtour/widgets/explorecontainer.dart';
import 'package:startyourtour/widgets/line_widget.dart';
import 'package:startyourtour/widgets/smallcontainer.dart';

class MyPackages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var searchc = TextEditingController();
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextFormField(
            controller: searchc,
            cursorColor: Theme.of(context).primaryIconTheme.color,
            style: TextStyle(color: Colors.black),
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
        SizedBox(height: 15),
        Expanded(
          child: ListView(shrinkWrap: true, children: [
            LineWidget(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowPost(),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Show Post',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Theme.of(context).primaryIconTheme.color,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            LineWidget(),
            Container(
              height: 80,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallContainer(
                      imageroute: 'assets/ab.jpg',
                      text: 'USA',
                    ),
                    SmallContainer(
                      imageroute: 'assets/ab.jpg',
                      text: 'USA',
                    ),
                    SmallContainer(
                      imageroute: 'assets/ab.jpg',
                      text: 'USA',
                    ),
                    SmallContainer(
                      imageroute: 'assets/ab.jpg',
                      text: 'USA',
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PopularDestination(),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Destination',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            BigContainer(
              imageroute: 'assets/ab.jpg',
              titletext: 'Baniff National Park',
              subtext: 'Canada',
            ),
            BigContainer(
              imageroute: 'assets/a.jpg',
              titletext: 'Baniffs National Park',
              subtext: 'Canada',
            ),
            BigContainer(
              imageroute: 'assets/a.jpg',
              titletext: 'Baniffs National Park',
              subtext: 'Canada',
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Explore',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ExploreBuilder(),
          ]),
        ),
      ]),
    );
  }
}
