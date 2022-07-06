import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:startyourtour/agent/quotedetailscreen/quoteitenarary.dart';
import 'package:startyourtour/widgets/customlinewidget.dart';

class QuoteDetailScreen extends StatefulWidget {
  @override
  _QuoteDetailScreenState createState() => _QuoteDetailScreenState();
}

class _QuoteDetailScreenState extends State<QuoteDetailScreen> {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 32, //IconTheme.of(context).size,
          onPressed: () =>
              Navigator.pop(context), //Scaffold.of(context).openDrawer(),
        ),
        foregroundColor: Theme.of(context).primaryColor,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.centerRight,
          child: Text(
            'Overview',
            style: TextStyle(
                color: Theme.of(context).primaryIconTheme.color, fontSize: 25),
          ),
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Form(
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: titlec,
                  enabled: false,
                  style: TextStyle(color: Colors.grey[900]),
                  cursorColor: Theme.of(context).primaryIconTheme.color,
                  decoration: InputDecoration(
                      hintText: 'Enter Location',
                      hintStyle:
                          TextStyle(color: Colors.grey[900], fontSize: 18),
                      labelText: 'Location',
                      labelStyle:
                          TextStyle(color: Colors.grey[900], fontSize: 18),
                      disabledBorder: OutlineInputBorder(
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
                        enabled: false,
                        keyboardType: TextInputType.number,
                        controller: hotelc,
                        style: TextStyle(color: Colors.grey[900]),
                        cursorColor: Theme.of(context).primaryIconTheme.color,
                        decoration: InputDecoration(
                            hintText: 'Enter Nights',
                            hintStyle: TextStyle(
                                color: Colors.grey[900], fontSize: 18),
                            labelText: 'Nights',
                            labelStyle: TextStyle(
                                color: Colors.grey[900], fontSize: 18),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.grey[900], width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0),
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
                        enabled: false,
                        keyboardType: TextInputType.number,
                        controller: hotelc,
                        style: TextStyle(color: Colors.grey[900]),
                        cursorColor: Theme.of(context).primaryIconTheme.color,
                        decoration: InputDecoration(
                            hintText: 'Enter Days',
                            hintStyle: TextStyle(
                                color: Colors.grey[900], fontSize: 18),
                            labelText: 'Days',
                            labelStyle: TextStyle(
                                color: Colors.grey[900], fontSize: 18),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.grey[900], width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.grey[900], width: 1.0),
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
                  enabled: false,
                  controller: placec,
                  style: TextStyle(color: Colors.grey[900]),
                  cursorColor: Theme.of(context).primaryIconTheme.color,
                  decoration: InputDecoration(
                      labelText: 'Price / person',
                      labelStyle:
                          TextStyle(color: Colors.grey[900], fontSize: 18),
                      hintText: 'Enter value',
                      hintStyle:
                          TextStyle(color: Colors.grey[900], fontSize: 18),
                      disabledBorder: OutlineInputBorder(
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
                  enabled: false,
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
                      hintStyle:
                          TextStyle(color: Colors.grey[900], fontSize: 18),
                      disabledBorder: OutlineInputBorder(
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
                            // onChanged: (bool val) {
                            //   setState(() {
                            //     mealval = val;
                            //   });
                            // }),
                          ),
                          Text('Breakfast')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: mealval,
                            // onChanged: (bool val) {
                            //   setState(() {
                            //     mealval = val;
                            //   });
                            // }),
                          ),
                          Text('Lunch')
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: mealval,
                            // onChanged: (bool val) {
                            //   setState(() {
                            //     mealval = val;
                            //   });
                            // }),
                          ),
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
                            // onChanged: (int val) {
                            //   setState(() {
                            //     radioval = val;
                            //   });
                            // }),
                          ),
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
                            // onChanged: (int val) {
                            //   setState(() {
                            //     radioval = val;
                            //   });
                            // }),
                          ),
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
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
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
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
                              Text('3 Star')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
                              Text('5 Star'),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
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
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
                              Text('2 Star')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
                              Text('4 Star')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: hotelval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     hotelval = val;
                                //   });
                                // }),
                              ),
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
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
                              Text('Historical')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: categoriesval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
                              Text('Nature')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: categoriesval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
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
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
                              Text('Adventure')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: categoriesval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
                              Text('Religious')
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: categoriesval,
                                // onChanged: (bool val) {
                                //   setState(() {
                                //     categoriesval = val;
                                //   });
                                // }),
                              ),
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
                            // onChanged: (int val) {
                            //   setState(() {
                            //     cabval = val;
                            //   });
                            // }),
                          ),
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
                            // onChanged: (int val) {
                            //   setState(() {
                            //     cabval = val;
                            //   });
                            // }),
                          ),
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
                // Row(
                //   children: [
                //     Checkbox(
                //         value: checkval,
                //         onChanged: (bool val) {
                //           setState(() {
                //             checkval = val;
                //           });
                //         }),
                //     Flexible(
                //       child: Wrap(children: [
                //         Text('I have Read and Agree to '),
                //         Text(
                //           'Cancellation Policy',
                //           style:
                //               TextStyle(decoration: TextDecoration.underline),
                //         ),
                //         Text(' and '),
                //         Text(
                //           'Terms and Condition',
                //           style:
                //               TextStyle(decoration: TextDecoration.underline),
                //         ),
                //       ]),
                //     )
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 7)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFF26A38)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          )),
                      child: Container(
                        width: 180,
                        child: Center(
                          child: Text('Submit Quote',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30.0)), //this right here
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 25, top: 15, right: 25),
                                    width: 400.0,
                                    height: 430,
                                    child: Form(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              IconButton(
                                                  splashRadius: 1,
                                                  onPressed: () =>
                                                      Navigator.pop(ctx),
                                                  icon: Center(
                                                    child: Icon(
                                                      Icons.arrow_back_ios,
                                                      color: Theme.of(context)
                                                          .primaryIconTheme
                                                          .color,
                                                    ),
                                                  )),
                                              Text(
                                                'Edit Quote',
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryIconTheme
                                                        .color,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          TextFormField(
                                            controller: placec,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Colors.grey[900]),
                                            cursorColor: Theme.of(context)
                                                .primaryIconTheme
                                                .color,
                                            decoration: InputDecoration(
                                                labelText: 'Total no. of Days',
                                                labelStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                hintText: 'Enter value',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[900],
                                                            width: 1.0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[900],
                                                      width: 1.0),
                                                ),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey[900],
                                                        width: 1.0)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 15.0,
                                                    right: 15.0,
                                                    top: 13,
                                                    bottom: 13)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            controller: placec,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Colors.grey[900]),
                                            cursorColor: Theme.of(context)
                                                .primaryIconTheme
                                                .color,
                                            decoration: InputDecoration(
                                                labelText: 'Price / person',
                                                labelStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                hintText: 'Enter value',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[900],
                                                            width: 1.0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[900],
                                                      width: 1.0),
                                                ),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey[900],
                                                        width: 1.0)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 15.0,
                                                    right: 15.0,
                                                    top: 13,
                                                    bottom: 13)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          TextFormField(
                                            controller: placec,
                                            minLines: 3,
                                            maxLines: 5,
                                            style: TextStyle(
                                                color: Colors.grey[900]),
                                            cursorColor: Theme.of(context)
                                                .primaryIconTheme
                                                .color,
                                            decoration: InputDecoration(
                                                labelText: 'Other',
                                                labelStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                hintText: 'Enter Overview',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[900],
                                                    fontSize: 18),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .grey[900],
                                                            width: 1.0)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey[900],
                                                      width: 1.0),
                                                ),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey[900],
                                                        width: 1.0)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 15.0,
                                                    right: 15.0,
                                                    top: 13,
                                                    bottom: 13)),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    padding:
                                                        MaterialStateProperty
                                                            .all(EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        7)),
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Color(
                                                                0xFFF26A38)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                      ),
                                                    )),
                                                child: Container(
                                                  width: 150,
                                                  child: Center(
                                                    child: Text('Next',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (ctx2) =>
                                                            QuoteItinerary()),
                                                  );
                                                }),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => HomePage()),
                        // );
                      }),
                )
              ],
            ),
          )),
    );
  }
}
