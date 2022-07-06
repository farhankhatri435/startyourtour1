import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/cardwidget.dart';
import 'package:startyourtour/agent/edititinerary.dart';
import 'package:startyourtour/agent/editoverview.dart';
import 'package:startyourtour/agent/editservices.dart';
import 'package:startyourtour/widgets/line_widget.dart';
import 'package:startyourtour/widgets/packagecard.dart';

class PackageDetailScreen extends StatefulWidget {
  String region = '';
  String imageroute = '';
  String place = '';
  PackageDetailScreen({this.region, this.place, this.imageroute});
  @override
  _PackageDetailScreenState createState() => _PackageDetailScreenState();
}

class _PackageDetailScreenState extends State<PackageDetailScreen> {
  ScrollController _controller;
  bool silverCollapsed = false;
  String myTitle;
  int selector = 0;

  @override
  void initState() {
    super.initState();
    myTitle = widget.region + ' , ' + widget.place;

    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.offset > 50 && !_controller.position.outOfRange) {
        if (!silverCollapsed) {
          // do what ever you want when silver is collapsing !

          myTitle = widget.region;
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_controller.offset <= 180 && !_controller.position.outOfRange) {
        if (silverCollapsed) {
          // do what ever you want when silver is expanding !

          myTitle = widget.region + ' , ' + widget.place;
          silverCollapsed = false;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    /// Hero animation for image
    bool saved = true;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          /// Appbar Custom using a SliverAppBar
          SliverAppBar(
            backgroundColor:
                Theme.of(context).primaryIconTheme.color.withOpacity(0.9),
            iconTheme: IconThemeData(color: Colors.white, size: 30.0),
            expandedHeight: 300.0,
            collapsedHeight: 140,
            elevation: 5,
            toolbarHeight: 140,
            leadingWidth: 75,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    width: 55,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: Center(child: Icon(Icons.arrow_back_ios_new)))),
            actions: [
              Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle),
                  width: 55,
                  child: Center(child: Icon(Icons.bookmark)))
            ],
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(myTitle,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                // title: Padding(
                //   padding: const EdgeInsets.only(bottom: 40.0),
                //   child: Text(
                //     widget.region + ' , ' + widget.place,
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   ),
                // ),
                background: Material(
                  child: new DecoratedBox(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage(widget.imageroute),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 350.0),
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )),
          ),

          /// Container for description to Sort and Refine
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.place,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              )),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              child: Text('1 Nights & 2 Days',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  ))),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Rs. 12000/person',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.0,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Status : Active',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.0,
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Column(children: [
                            Icon(Icons.airplanemode_active),
                            Text(
                              'Flights',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Column(children: [
                            Icon(Icons.local_taxi),
                            Text(
                              'Cabs',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Column(children: [
                            Icon(Icons.hotel_rounded),
                            Text(
                              '2,3 star',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Column(children: [
                            Icon(
                              Icons.lunch_dining,
                              color: Theme.of(context).primaryIconTheme.color,
                            ),
                            Text(
                              'Meals',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                          Column(children: [
                            Icon(Icons.remove_red_eye),
                            Text(
                              'Tour',
                              style: TextStyle(fontSize: 12),
                            )
                          ]),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),

                      // Text(
                      //     'loremhiurh voershtiu sc fiu rs dsygyuggsyugsusui ghsdu husyg yidfo gweriy gyuergwe g dsig droy g gydvauy fufyu u aeuyr yuse vyus vsyu vry gfyovgyov eyrv by gbyrs bvyoer brug beriuo g',
                      //     style: TextStyle(
                      //       color: Colors.black54,
                      //       fontSize: 16.0,
                      //     )),
                      SizedBox(
                        height: 20.0,
                      ),
                      LineWidget(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selector = 0;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Text('Overview',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ))),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selector = 1;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Text('Itinerary',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ))),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selector = 2;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Text('Services',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      LineWidget(),
                      ListView(
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: selector == 0
                              ? [
                                  Stack(
                                    children: [
                                      Center(
                                        child: Text('Overview',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 21.0,
                                            )),
                                      ),
                                      Positioned(
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditOverview()),
                                            );
                                          },
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20.0))),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.edit,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(width: 5),
                                                Text('Edit',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 19.0,
                                                    )),
                                              ])),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Category :',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                            )),
                                        Text('Historical, Adventure'),
                                        SizedBox(height: 10),
                                        Text('Meals :',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                            )),
                                        Text('Breakfast'),
                                        SizedBox(height: 10),
                                        Text('Overview :',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0,
                                            )),
                                        Text('Not Required')
                                      ])
                                ]
                              : selector == 1
                                  ? [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: Text('Itinerary',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 21.0,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('Day 1 :',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                      )),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                EditItinerary()),
                                                      );
                                                    },
                                                    child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 10),
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Colors.orange,
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        20.0))),
                                                        child: Row(children: [
                                                          Icon(
                                                            Icons.edit,
                                                            color: Colors.black,
                                                          ),
                                                          SizedBox(width: 5),
                                                          Text('Edit',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 19.0,
                                                              )),
                                                        ])),
                                                  )
                                                  // IconButton(
                                                  //     onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //       builder: (context) =>
                                                  //           EditItinerary()),
                                                  // );
                                                  //     },
                                                  // icon: Icon(
                                                  //   Icons.edit,
                                                  //   color: Colors.orange,

                                                  // ))
                                                ]),
                                            Text('Hidfsfsffure'),
                                            SizedBox(height: 5),
                                            Text('Hotel :',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                )),
                                            Text('assdast'),
                                            SizedBox(height: 5),
                                            Text('Activity :',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                )),
                                            Text('afdsasff')
                                          ])
                                    ]
                                  : [
                                      Stack(
                                        children: [
                                          Center(
                                            child: Text('Services',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 21.0,
                                                )),
                                          ),

                                          Positioned(
                                            right: 0,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          EditServices()),
                                                );
                                              },
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20.0))),
                                                  child: Row(children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Colors.black,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text('Edit',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 19.0,
                                                        )),
                                                  ])),
                                            ),
                                          )
                                          // IconButton(
                                          //     onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           EditOverview()),
                                          // );
                                          //     },
                                          //     icon: Icon(
                                          //       Icons.edit, color: Colors.orange,
                                          //       // color: Theme.of(context)
                                          //       //     .primaryIconTheme
                                          //       //     .color,
                                          //     ))
                                        ],
                                      ),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Inclusions :',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                )),
                                            Text('-> All Entry Tickets'),
                                            Text(
                                                '-> Early check in and late checkout'),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Exclusions :',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                )),
                                            Text('-> Transfer Cab'),
                                            Text('-> GST/VAT'),
                                            Text('-> Air/Train Fare'),
                                            Text('-> Boating'),
                                            Text('-> Airport Transfers'),
                                          ])
                                    ])

                      // ListView.builder(
                      //   padding: EdgeInsets.all(0),
                      //   shrinkWrap: true,
                      //   physics: NeverScrollableScrollPhysics(),
                      //   itemBuilder: (_, i) {
                      //     return PackageCard();
                      //   },
                      //   itemCount: 5,
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Create Grid Item
        ],
      ),
    );
  }
}
