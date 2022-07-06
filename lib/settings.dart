import 'package:flutter/material.dart';
import 'package:startyourtour/changepassword.dart';
import 'package:startyourtour/widgets/customlinewidget.dart';
import 'package:startyourtour/widgets/line_widget.dart';
import 'package:startyourtour/agent/categories.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchval = true;

  String selectedCountry = 'Countries';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Theme.of(context).primaryColor,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, bottom: 3),
          alignment: Alignment.centerRight,
          child: Text(
            'Settings',
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
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 32, //IconTheme.of(context).size,
              onPressed: () =>
                  Navigator.pop(context), //Scaffold.of(context).openDrawer(),
            ),
          );
        }),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Country',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            LineWidget(),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Enable Notification',
                style: TextStyle(fontSize: 18),
              ),
              Switch(
                  activeTrackColor: Theme.of(context).primaryIconTheme.color,
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
              height: 20,
            ),
            LineWidget(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (ctx) => Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0)), //this right here
                          child: Container(
                            padding: EdgeInsets.only(left: 25, top: 15),
                            height: 210.0,
                            width: 300.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Select Language',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .primaryIconTheme
                                            .color,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.symmetric(vertical: 7)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFFF26A38)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                        )),
                                    child: Container(
                                      width: 150,
                                      child: Center(
                                        child: Text('English',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    }),
                                SizedBox(
                                  height: 7,
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.symmetric(vertical: 7)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFFF26A38)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                        )),
                                    child: Container(
                                      width: 150,
                                      child: Center(
                                        child: Text('German',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    }),
                              ],
                            ),
                          ),
                        ));
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Language ( English )',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            LineWidget(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change Password',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            LineWidget(),
          ],
        ),
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
