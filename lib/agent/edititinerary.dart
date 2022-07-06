import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/customlinewidget.dart';

class EditItinerary extends StatefulWidget {
  @override
  _EditItineraryState createState() => _EditItineraryState();
}

class _EditItineraryState extends State<EditItinerary> {
  bool checkval = false;
  @override
  Widget build(BuildContext context) {
    //var countryc = TextEditingController();
    var titlec = TextEditingController();
    var hotelc = TextEditingController();
    var placec = TextEditingController();
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
            'Edit Itinerary',
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
                  TextFormField(
                    controller: titlec,
                    style: TextStyle(color: Colors.grey[900]),
                    cursorColor: Theme.of(context).primaryIconTheme.color,
                    decoration: InputDecoration(
                        hintText: 'Title',
                        hintStyle:
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
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: hotelc,
                    style: TextStyle(color: Colors.grey[900]),
                    cursorColor: Theme.of(context).primaryIconTheme.color,
                    decoration: InputDecoration(
                        hintText: 'Hotel',
                        hintStyle:
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
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: placec,
                    style: TextStyle(color: Colors.grey[900]),
                    cursorColor: Theme.of(context).primaryIconTheme.color,
                    decoration: InputDecoration(
                        hintText: 'Place And Activity',
                        hintStyle:
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
