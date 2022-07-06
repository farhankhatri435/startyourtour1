import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:startyourtour/agent/quotedetailscreen/filter.dart';
import 'package:startyourtour/widgets/FilterContainer.dart';
import 'package:startyourtour/widgets/customlinewidget.dart';
import 'package:startyourtour/widgets/line_widget.dart';
import 'package:startyourtour/widgets/quotecontainer.dart';

List<String> countries = ['Africa', 'India', 'England'];

class AvailableBids extends StatefulWidget {
  @override
  _AvailableBidsState createState() => _AvailableBidsState();
}

class _AvailableBidsState extends State<AvailableBids> {
  var searchc = TextEditingController();
  String selectedCountry = 'Countries';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20 + MediaQuery.of(context).padding.top,
              left: 20,
              right: 20,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryIconTheme.color,
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        _showBottomSheet(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                selectedCountry,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Custom Bids',
                    style: TextStyle(
                        color: Theme.of(context).primaryIconTheme.color,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
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
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      FilterContainer(text: 'All'),
                      FilterContainer(text: 'Hotel'),
                      FilterContainer(text: 'River'),
                      FilterContainer(text: 'Lake'),
                      FilterContainer(text: 'City'),
                      FilterContainer(text: 'Mountain')
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  children: [
                    QuoteContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    QuoteContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    QuoteContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                    QuoteContainer(
                      imageroute: 'assets/ab.jpg',
                      titletext: 'Baniff National Park',
                      subtext: 'Canada',
                    ),
                  ],
                ),
              )
            ]),
          ),
          Align(
            alignment: Alignment(0.9, 0.98),
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryIconTheme.color,
              child: Icon(
                Icons.filter_1,
                color: Colors.white, //Theme.of(context).primaryIconTheme.color,
                size: Theme.of(context).primaryIconTheme.size,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx2) => FilterScreen()),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  _showBottomSheet(BuildContext ctx) async {
    await showModalBottomSheet(
        backgroundColor: Colors.white,
        barrierColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter sheetSetState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.3,
              maxChildSize: 0.8,
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColorDark,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                              cursorColor:
                                  Theme.of(context).primaryIconTheme.color,
                              style: TextStyle(color: Colors.grey),
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
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_, index) {
                            return Column(children: [
                              CustomLineWidget(
                                height: 1.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedCountry = countries[index];

                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        //color: Colors.grey,
                                        //borderRadius: BorderRadius.circular(10)),
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(countries[index],
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryIconTheme
                                                      .color)),
                                          Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/a.jpg'),
                                                      fit: BoxFit.fitHeight)))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]);
                          },
                          itemCount: countries.length,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          });
        });
  }
}
