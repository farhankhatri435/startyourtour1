import 'package:flutter/material.dart';
import 'package:startyourtour/agent/packagedetaillist.dart';
import 'package:startyourtour/widgets/customlinewidget.dart';

class AddPackage extends StatefulWidget {
  @override
  _AddPackageState createState() => _AddPackageState();
}

class _AddPackageState extends State<AddPackage> {
  bool checkval = false;
  bool mealval = false;
  int radioval = 0;
  bool hotelval = false;
  bool categoriesval = false;
  int cabval = 0;
  @override
  Widget build(BuildContext context) {
    //var countryc = TextEditingController();
    var titlec = TextEditingController();
    var hotelc = TextEditingController();
    var placec = TextEditingController();
    return Container(
        padding: EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
        ),
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              TextFormField(
                controller: titlec,
                style: TextStyle(color: Colors.grey[900]),
                cursorColor: Theme.of(context).primaryIconTheme.color,
                decoration: InputDecoration(
                    hintText: 'Enter Location',
                    hintStyle: TextStyle(color: Colors.grey[900], fontSize: 18),
                    labelText: 'Location',
                    labelStyle:
                        TextStyle(color: Colors.grey[900], fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Colors.grey[900], width: 1.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    contentPadding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 13, bottom: 13)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: hotelc,
                      style: TextStyle(color: Colors.grey[900]),
                      cursorColor: Theme.of(context).primaryIconTheme.color,
                      decoration: InputDecoration(
                          hintText: 'Enter Nights',
                          hintStyle:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
                          labelText: 'Nights',
                          labelStyle:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.grey[900], width: 1.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0)),
                          contentPadding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 13, bottom: 13)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: hotelc,
                      style: TextStyle(color: Colors.grey[900]),
                      cursorColor: Theme.of(context).primaryIconTheme.color,
                      decoration: InputDecoration(
                          hintText: 'Enter Days',
                          hintStyle:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
                          labelText: 'Days',
                          labelStyle:
                              TextStyle(color: Colors.grey[900], fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Colors.grey[900], width: 1.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0)),
                          contentPadding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 13, bottom: 13)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: placec,
                style: TextStyle(color: Colors.grey[900]),
                cursorColor: Theme.of(context).primaryIconTheme.color,
                decoration: InputDecoration(
                    labelText: 'Price / person',
                    labelStyle:
                        TextStyle(color: Colors.grey[900], fontSize: 18),
                    hintText: 'Enter value',
                    hintStyle: TextStyle(color: Colors.grey[900], fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Colors.grey[900], width: 1.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    contentPadding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 13, bottom: 13)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: placec,
                style: TextStyle(color: Colors.grey[900]),
                minLines: 3,
                maxLines: 5,
                cursorColor: Theme.of(context).primaryIconTheme.color,
                decoration: InputDecoration(
                    labelText: 'Overview',
                    labelStyle:
                        TextStyle(color: Colors.grey[900], fontSize: 18),
                    hintText: 'Enter Overview',
                    hintStyle: TextStyle(color: Colors.grey[900], fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Colors.grey[900], width: 1.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Colors.grey[900], width: 1.0)),
                    contentPadding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 13, bottom: 13)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Meals',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: double.infinity,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: mealval,
                            onChanged: (bool val) {
                              setState(() {
                                mealval = val;
                              });
                            }),
                        Text('Breakfast')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: mealval,
                            onChanged: (bool val) {
                              setState(() {
                                mealval = val;
                              });
                            }),
                        Text('Lunch')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: mealval,
                            onChanged: (bool val) {
                              setState(() {
                                mealval = val;
                              });
                            }),
                        Text('Dinner')
                      ],
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Flights',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: double.infinity,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        // Checkbox(
                        //     value: mealval,
                        //     onChanged: (bool val) {
                        //       mealval = val;
                        //     }),Radio(
                        Radio(
                            value: 1,
                            groupValue: radioval,
                            onChanged: (int val) {
                              setState(() {
                                radioval = val;
                              });
                            }),
                        Stack(children: [
                          Text(
                            'Honeymoon',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('Exclude')
                        ])
                      ],
                    ),
                    Row(
                      children: [
                        // Checkbox(
                        //     value: mealval,
                        //     onChanged: (bool val) {
                        //       mealval = val;
                        //     }),
                        Radio(
                            value: 2,
                            groupValue: radioval,
                            onChanged: (int val) {
                              setState(() {
                                radioval = val;
                              });
                            }),
                        Stack(children: [
                          Text(
                            'Adventure',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('Include')
                        ])
                      ],
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hotels',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: hotelval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Stack(children: [
                              Text(
                                'Honeymoon',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text('No'),
                            ])
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: hotelval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Text('3 Star')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: mealval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Text('5 Star')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: mealval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Text('Triple Sharing')
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: mealval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Text('2 Star')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: hotelval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Text('4 Star')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: hotelval,
                                onChanged: (bool val) {
                                  setState(() {
                                    hotelval = val;
                                  });
                                }),
                            Stack(children: [
                              Text('Adventure',
                                  style: TextStyle(color: Colors.white)),
                              Text('Any')
                            ])
                          ],
                        ),
                      ],
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Categories',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('Historical')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('Nature')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('Honeymoon')
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('Adventure')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('Religious')
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: categoriesval,
                                onChanged: (bool val) {
                                  setState(() {
                                    categoriesval = val;
                                  });
                                }),
                            Text('WildLife')
                          ],
                        ),
                      ],
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Cabs',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                width: double.infinity,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        // Checkbox(
                        //     value: mealval,
                        //     onChanged: (bool val) {
                        //       mealval = val;
                        //     }),Radio(
                        Radio(
                            value: 1,
                            groupValue: cabval,
                            onChanged: (int val) {
                              setState(() {
                                cabval = val;
                              });
                            }),
                        Stack(children: [
                          Text(
                            'Honeymoon',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('Exclude')
                        ])
                      ],
                    ),
                    Row(
                      children: [
                        // Checkbox(
                        //     value: mealval,
                        //     onChanged: (bool val) {
                        //       mealval = val;
                        //     }),
                        Radio(
                            value: 2,
                            groupValue: cabval,
                            onChanged: (int val) {
                              setState(() {
                                cabval = val;
                              });
                            }),
                        Stack(children: [
                          Text(
                            'Adventure',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('Include')
                        ])
                      ],
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Display Date',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                child: Center(child: Text('hi')),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[900], width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(
                      value: checkval,
                      onChanged: (bool val) {
                        setState(() {
                          checkval = val;
                        });
                      }),
                  Flexible(
                    child: Wrap(children: [
                      Text('I have Read and Agree to '),
                      Text(
                        'Cancellation Policy',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      Text(' and '),
                      Text(
                        'Terms and Condition',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.symmetric(
                            vertical: 7,
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFF26A38)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          )),
                      child: Container(
                        width: 150,
                        child: Center(
                          child: Text('Create',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PackageDetailScreen(
                                    imageroute: 'assets/ab.jpg',
                                    region: 'India',
                                    place: 'Jamnagar',
                                  )),
                        );
                      }),
                ),
              )
            ],
          ),
        ));

    // return Container(
    //   padding: EdgeInsets.only(top: 30, left: 15, right: 15),
    //   child: Column(
    //     children: [
    //       Form(
    //         child: Column(
    //           children: [
    //             GestureDetector(
    //               onTap: () {
    //                 FocusScope.of(context).unfocus();
    //                 _showBottomSheet(context);
    //               },
    //               child: TextFormField(
    //                 readOnly: true, enabled: false,
    //                 //controller: countryc,

    //                 style: TextStyle(color: Colors.grey[900]),
    //                 cursorColor: Theme.of(context).primaryIconTheme.color,
    //                 decoration: InputDecoration(
    //                     suffixIcon: Icon(
    //                       Icons.keyboard_arrow_down,
    //                       color: Colors.white,
    //                       size: 42,
    //                     ),
    //                     hintText: selectedCountry,
    //                     hintStyle:
    //                         TextStyle(color: Colors.grey[900], fontSize: 18),
    //                     disabledBorder: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(10.0),
    //                         borderSide: BorderSide(
    //                             color: Colors.grey[900], width: 1.0)),
    //                     border: OutlineInputBorder(
    //                         borderRadius: BorderRadius.circular(10.0),
    //                         borderSide: BorderSide(
    //                             color: Colors.grey[900], width: 1.0)),
    //                     contentPadding: EdgeInsets.only(
    //                         left: 15.0, right: 15.0, top: 13, bottom: 13)),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Stack(children: [
    //               GestureDetector(
    //                 onTap: () {},
    //                 child: TextFormField(
    //                   textAlign: TextAlign.center,
    //                   cursorColor: Theme.of(context).primaryIconTheme.color,
    //                   textAlignVertical: TextAlignVertical.center,
    //                   controller: placec,
    //                   minLines: 4,
    //                   maxLines: 20,
    //                   enabled: false,
    //                   style: TextStyle(color: Colors.grey[900]),
    //                   decoration: InputDecoration(
    //                       hintText: 'Add Post',
    //                       hintStyle:
    //                           TextStyle(color: Colors.grey[900], fontSize: 18),
    //                       disabledBorder: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(10.0),
    //                           borderSide: BorderSide(
    //                               color: Colors.grey[900], width: 1.0)),
    //                       border: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(10.0),
    //                           borderSide: BorderSide(
    //                               color: Colors.grey[900], width: 1.0)),
    //                       contentPadding: EdgeInsets.only(
    //                           left: 15.0, right: 15.0, top: 13, bottom: 13)),
    //                 ),
    //               ),
    //               Positioned(
    //                 child: Icon(
    //                   Icons.image,
    //                   color: Colors.grey[900],
    //                   size: 30,
    //                 ),
    //                 left: 0,
    //                 right: 0,
    //                 bottom: 20,
    //               )
    //             ]),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             TextFormField(
    //               controller: placec,
    //               style: TextStyle(color: Colors.grey[900]),
    //               cursorColor: Theme.of(context).primaryIconTheme.color,
    //               decoration: InputDecoration(
    //                   hintText: 'Place',
    //                   hintStyle:
    //                       TextStyle(color: Colors.grey[900], fontSize: 18),
    //                   enabledBorder: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       borderSide:
    //                           BorderSide(color: Colors.grey[900], width: 1.0)),
    //                   focusedBorder: OutlineInputBorder(
    //                     borderRadius: BorderRadius.circular(10.0),
    //                     borderSide:
    //                         BorderSide(color: Colors.grey[900], width: 1.0),
    //                   ),
    //                   border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       borderSide:
    //                           BorderSide(color: Colors.grey[900], width: 1.0)),
    //                   contentPadding: EdgeInsets.only(
    //                       left: 15.0, right: 15.0, top: 13, bottom: 13)),
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             TextFormField(
    //               controller: aboutphotoc,
    //               style: TextStyle(color: Colors.grey[900]),
    //               cursorColor: Theme.of(context).primaryIconTheme.color,
    //               decoration: InputDecoration(
    //                   hintText: 'About Photo',
    //                   hintStyle:
    //                       TextStyle(color: Colors.grey[900], fontSize: 18),
    //                   enabledBorder: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       borderSide:
    //                           BorderSide(color: Colors.grey[900], width: 1.0)),
    //                   focusedBorder: OutlineInputBorder(
    //                     borderRadius: BorderRadius.circular(10.0),
    //                     borderSide:
    //                         BorderSide(color: Colors.grey[900], width: 1.0),
    //                   ),
    //                   border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(10.0),
    //                       borderSide:
    //                           BorderSide(color: Colors.grey[900], width: 1.0)),
    //                   contentPadding: EdgeInsets.only(
    //                       left: 15.0, right: 15.0, top: 13, bottom: 13)),
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }

  // _showBottomSheet(BuildContext ctx) async {
  //   await showModalBottomSheet(
  //       backgroundColor: Colors.white,
  //       barrierColor: Colors.black.withOpacity(0.2),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
  //       ),
  //       isScrollControlled: true,
  //       context: context,
  //       builder: (context) {
  //         return StatefulBuilder(
  //             builder: (BuildContext context, StateSetter sheetSetState) {
  //           return DraggableScrollableSheet(
  //             initialChildSize: 0.7,
  //             minChildSize: 0.3,
  //             maxChildSize: 0.8,
  //             expand: false,
  //             builder:
  //                 (BuildContext context, ScrollController scrollController) {
  //               return SingleChildScrollView(
  //                 controller: scrollController,
  //                 child: Container(
  //                   padding: EdgeInsets.all(10),
  //                   child: Column(
  //                     children: [
  //                       Padding(
  //                         padding: const EdgeInsets.all(5.0),
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                               color: Theme.of(context).primaryColorDark,
  //                               borderRadius:
  //                                   BorderRadius.all(Radius.circular(10))),
  //                           child: TextFormField(
  //                             cursorColor:
  //                                 Theme.of(context).primaryIconTheme.color,
  //                             style: TextStyle(color: Colors.grey),
  //                             decoration: InputDecoration(
  //                                 hintText: 'Search',
  //                                 hintStyle: TextStyle(color: Colors.grey),
  //                                 prefixIcon: Icon(
  //                                   Icons.search,
  //                                   color: Colors.black,
  //                                   size: 30,
  //                                 ),
  //                                 border: InputBorder.none),
  //                           ),
  //                         ),
  //                       ),
  //                       ListView.builder(
  //                         shrinkWrap: true,
  //                         physics: NeverScrollableScrollPhysics(),
  //                         itemBuilder: (_, index) {
  //                           return Column(children: [
  //                             CustomLineWidget(
  //                               height: 1.5,
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: GestureDetector(
  //                                 onTap: () {
  //                                   setState(() {
  //                                     selectedCountry = countries[index];

  //                                     Navigator.pop(context);
  //                                   });
  //                                 },
  //                                 child: Container(
  //                                   height: 40,
  //                                   decoration: BoxDecoration(
  //                                       //color: Colors.grey,
  //                                       //borderRadius: BorderRadius.circular(10)),
  //                                       ),
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(8.0),
  //                                     child: Row(
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment.spaceBetween,
  //                                       children: [
  //                                         Text(countries[index],
  //                                             style: TextStyle(
  //                                                 color: Theme.of(context)
  //                                                     .primaryIconTheme
  //                                                     .color)),
  //                                         Container(
  //                                             height: 50,
  //                                             width: 50,
  //                                             decoration: BoxDecoration(
  //                                                 image: DecorationImage(
  //                                                     image: AssetImage(
  //                                                         'assets/a.jpg'),
  //                                                     fit: BoxFit.fitHeight)))
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                           ]);
  //                         },
  //                         itemCount: countries.length,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               );
  //             },
  //           );
  //         });
  //       });
  // }
}
