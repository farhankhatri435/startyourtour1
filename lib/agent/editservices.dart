import 'package:flutter/material.dart';

class EditServices extends StatefulWidget {
  @override
  _EditServicesState createState() => _EditServicesState();
}

class _EditServicesState extends State<EditServices> {
  bool switchval = false;
  bool checkval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Edit Services',
            style: TextStyle(
                color: Theme.of(context).primaryIconTheme.color, fontSize: 25),
          ),
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Meal Plan for Hotel Breakfast Lunch & Dinner',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Airport/Bus/Railway Station Transfers',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Parking/Toll/Driver Data/Fuel Cost',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Transfer Cab',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'GST/VAT',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Air/Train Fare',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'All Entry Tickets',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Early Check-In and Late Checkout',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Anything not mentioned in inclusions',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Flexible(
                            child: Text(
                              'Boating / Other Activities',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Switch(
                            activeTrackColor:
                                Theme.of(context).primaryIconTheme.color,
                            inactiveThumbColor: Theme.of(context).accentColor,
                            activeColor: Theme.of(context).accentColor,
                            value: switchval,
                            onChanged: (bool val) {
                              setState(() {
                                switchval = val;
                              });
                            })
                      ]),
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
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          Text(' and '),
                          Text(
                            'Terms and Condition',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ]),
                      )
                    ],
                  ),
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            )),
                        child: Container(
                          width: 150,
                          child: Center(
                            child: Text('Update ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePage()),
                          // );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
