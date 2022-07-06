// import 'dart:ui';

// import 'package:flutter/material.dart';

// class SignupPage extends StatefulWidget {
//   var isAgent = true;
//   SignupPage({this.isAgent});
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   var namec = TextEditingController();
//   var emailc = TextEditingController();
//   var passc = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         body: Stack(children: [
//           Image(
//               fit: BoxFit.cover,
//               width: width,
//               height: height,
//               image: AssetImage(
//                 'assets/bus.gif',
//               )),
//           Positioned(
//             top: height * 0.3,
//             left: width * 0.13,
//             child: Text(
//               'Sign Up Page',
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   color: Colors.orange[400],
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Positioned(
//             top: height * 0.39,
//             left: width * 0.18,
//             child: Text(
//               widget.isAgent ? '(Travel Agent)' : '(Traveller)',
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   color: Colors.orange[400],
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Positioned(
//             top: height * 0.45,
//             left: width * 0.1,
//             child: Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   shape: BoxShape.rectangle,
//                   color: Theme.of(context).primaryColorDark),
//               width: width * 0.8,
//               height: height * 0.45,
//               child: Form(
//                   child: Column(mainAxisSize: MainAxisSize.min, children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: TextFormField(
//                     controller: namec,
//                     decoration: InputDecoration(
//                         hintText: 'Name',
//                         hintStyle: TextStyle(color: Colors.black)),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: TextFormField(
//                     controller: emailc,
//                     decoration: InputDecoration(
//                         hintText: 'Email',
//                         hintStyle: TextStyle(color: Colors.black)),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: TextFormField(
//                     controller: passc,
//                     decoration: InputDecoration(
//                         hintText: 'Password',
//                         hintStyle: TextStyle(color: Colors.black)),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: 'Confirm Password',
//                         hintStyle: TextStyle(color: Colors.black)),
//                   ),
//                 ),
//               ])),
//             ),
//           ),
//           Positioned(
//               left: width * 0.25,
//               top: height * 0.87,
//               width: width * 0.5,
//               child: ElevatedButton(
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.orange),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(18.0),
//                       ))),
//                   child: Text(
//                       widget.isAgent
//                           ? 'Sign Up As An Agent'
//                           : 'Sing Up As A Traveller',
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                   onPressed: () {}))
//         ]));
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:startyourtour/agent/homepage.dart';
import 'loginpage.dart';

class SignupPage extends StatefulWidget {
  bool isAgent = true;
  SignupPage({this.isAgent});
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var loginc = TextEditingController();
  var passc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
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
                    'Create Account',
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
                    height: 370,
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            color: Theme.of(context).primaryColor),
                        width: width * 0.9,
                        height: 350,
                        child: Form(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                child: TextFormField(
                                  controller: loginc,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      border: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: Theme.of(context)
                                            .primaryIconTheme
                                            .color,
                                        size: 20,
                                      ),
                                      hintText: 'Name',
                                      hintStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                child: TextFormField(
                                  controller: passc,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.alternate_email,
                                      color: Theme.of(context)
                                          .primaryIconTheme
                                          .color,
                                      size: 20,
                                    ),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                child: TextFormField(
                                  controller: passc,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.vpn_key_sharp,
                                      color: Theme.of(context)
                                          .primaryIconTheme
                                          .color,
                                      size: 20,
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                child: TextFormField(
                                  controller: passc,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.vpn_key_sharp,
                                      color: Theme.of(context)
                                          .primaryIconTheme
                                          .color,
                                      size: 20,
                                    ),
                                    hintText: 'Confirm Password',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                //margin: EdgeInsets.all(8.0),
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  child: Text(
                                    widget.isAgent
                                        ? 'Sign Up As A Travel Agent'
                                        : 'Sign Up As A Traveller',
                                    style: TextStyle(
                                        color: Color(0xFFF26A38), fontSize: 20),
                                  ),
                                  onTap: () {
                                    widget.isAgent = !widget.isAgent;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignupPage(
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
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    )),
                                child: Container(
                                  width: 150,
                                  child: Center(
                                    child: Text('Sign Up',
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
                    ])),
              ])),
          // Positioned(
          //     left: width * 0.3,
          //     top: 560,
          //     width: 150,
          //     child: ElevatedButton(
          //         style: ButtonStyle(
          //             backgroundColor:
          //                 MaterialStateProperty.all(Color(0xFFF26A38)),
          //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //                 RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(18.0),
          //             ))),
          //         child: Text('Sign Up',
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
