import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:startyourtour/agent/homepage.dart';
import 'signuppage.dart';

class LoginPage extends StatefulWidget {
  bool isAgent = true;
  LoginPage({this.isAgent});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginc = TextEditingController();
  var passc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
            // Container(
            //   width: 200,
            //   height: 200,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage("ab.jpg"), fit: BoxFit.cover)),
            //   child: Text('hdsdedfefi'),
            // )
            Stack(children: [
          Image(
              fit: BoxFit.cover,
              width: width,
              height: height,
              image: AssetImage(
                'assets/abc.jpg',
              )),
          Positioned(
              left: 15,
              top: 80,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.grey,
                  size: 28,
                ),
              )),
          Positioned(
              top: 120,
              child: Column(children: [
                Container(
                  width: width,
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFF26A38),
                        fontSize: 39,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  width: width,
                  alignment: Alignment.center,
                  child: Text(
                    widget.isAgent ? '(Travel Agent)' : '(Traveller)',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFF26A38),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 285,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                          color: Theme.of(context).primaryColor),
                      width: width * 0.9,
                      height: 260,
                      child: Form(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          child: TextFormField(
                            controller: loginc,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                suffixIcon: Icon(
                                  Icons.alternate_email,
                                  color:
                                      Theme.of(context).primaryIconTheme.color,
                                  size: 20,
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          child: TextFormField(
                            controller: passc,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              suffixIcon: Icon(
                                Icons.vpn_key_sharp,
                                color: Theme.of(context).primaryIconTheme.color,
                                size: 20,
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(8.0),
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: Text(
                              'Forgot Password',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(8.0),
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: GestureDetector(
                            child: Text(
                              widget.isAgent
                                  ? 'Log In As A Travel Agent'
                                  : 'Log In As A Traveller',
                              style: TextStyle(
                                  color: Color(0xFFF26A38), fontSize: 20),
                            ),
                            onTap: () {
                              widget.isAgent = !widget.isAgent;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage(
                                          isAgent: widget.isAgent,
                                        )),
                              );
                            },
                          ),
                        )
                      ])),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(vertical: 7)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFFF26A38)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  )),
                              child: Container(
                                width: 150,
                                child: Center(
                                  child: Text('Login',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              }),
                        ))
                  ]),
                )
              ])),
          // Positioned(
          //     left: width * 0.3,
          //     top: 470,
          //     width: 150,
          //     child: ElevatedButton(
          //         style: ButtonStyle(
          //             backgroundColor:
          //                 MaterialStateProperty.all(Color(0xFFF26A38)),
          //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //                 RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(18.0),
          //             ))),
          //         child: Text('Login',
          //             style: TextStyle(fontSize: 20, color: Colors.white)),
          //         onPressed: () {
          //           Navigator.pushReplacement(
          //             context,
          //             MaterialPageRoute(builder: (context) => HomePage()),
          //           );
          //         })),
        ]));
  }
}
