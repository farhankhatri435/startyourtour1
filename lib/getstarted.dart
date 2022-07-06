import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:startyourtour/startpage.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var selectedindex = 0;
    final pagc = PageController(
      initialPage: 0,
    );
    return Scaffold(
      body: Stack(children: [
        PageView(controller: pagc, children: [
          Scaffold(
            body: Stack(children: [
              Image(
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                  image: AssetImage(
                    'assets/abc.jpg',
                  )),
              Positioned(
                  left: 50,
                  top: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let\'s Travel',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Lorem Ipsidjiefehifefeff',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartPage()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFF26A38)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                      )
                    ],
                  ))
            ]),
          ),
          Scaffold(
            body: Stack(children: [
              Image(
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                  image: AssetImage(
                    'assets/abc.jpg',
                  )),
              Positioned(
                  left: 50,
                  top: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plan A Trip',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Lorem Ipsidjiefehifefeff',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartPage()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFF26A38)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                      )
                    ],
                  ))
            ]),
          )
        ]),
        Positioned(
            bottom: 20,
            child: Container(
              width: width,
              child: Center(
                child: SmoothPageIndicator(
                  controller: pagc,
                  count: 2,
                  effect: SlideEffect(
                      activeDotColor: Color(0xFFD3D3D1),
                      dotColor: Colors.white,
                      dotWidth: 10,
                      dotHeight: 10),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       width: 10,
              //       height: 10,
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color:
              //             selectedindex == 0 ? Color(0xFFD3D3D1) : Colors.white,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Container(
              //         width: 10,
              //         height: 10,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: selectedindex == 1
              //               ? Color(0xFFD3D3D1)
              //               : Colors.white,
              //         ))
              //   ],
              // ),
            ))
      ]),
    );
  }
}
