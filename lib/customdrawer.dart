import 'package:flutter/material.dart';
import 'package:startyourtour/agent/homepage.dart';
import 'package:startyourtour/loginpage.dart';
import 'package:startyourtour/privacypolicy.dart';
import 'package:startyourtour/settings.dart';
import 'package:startyourtour/startpage.dart';

class Customdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                padding: EdgeInsets.only(left: 10, top: 70),
                color: Theme.of(context).primaryIconTheme.color,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/a.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Hello, Mr. abc',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: Theme.of(context).primaryIconTheme.size,
                      )),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        'My Profile',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  myprofile: true,
                                )),
                      );
                    },
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.privacy_tip_sharp,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: Theme.of(context).primaryIconTheme.size,
                      )),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrivacyPolicy()),
                      );
                    },
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.call,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: Theme.of(context).primaryIconTheme.size,
                      )),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        'Contact',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    onTap: () {},
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.settings,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: Theme.of(context).primaryIconTheme.size,
                      )),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.logout_sharp,
                        color: Theme.of(context).primaryIconTheme.color,
                        size: Theme.of(context).primaryIconTheme.size,
                      )),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(
                        'Log Out',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    onTap: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => StartPage()),
                      // );
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  )
                ]),
              )
            ],
          )),
    );
  }
}
