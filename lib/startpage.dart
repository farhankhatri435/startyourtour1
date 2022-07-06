import 'package:flutter/material.dart';
import 'package:startyourtour/loginpage.dart';
import 'package:startyourtour/signuppage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Image(
          fit: BoxFit.cover,
          width: width,
          height: height,
          image: AssetImage(
            'assets/abc.jpg',
          )),
      // Positioned(
      //     bottom: 20,
      //     child:
      Center(
          child: Container(
        width: width,
        padding: EdgeInsets.all(30),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 2)),
                  backgroundColor: MaterialStateProperty.all(Color(0xFFF26A38)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Container(
                  alignment: Alignment.center,
                  width: 500, //width*0.8,
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage(isAgent: false)),
                );
              }),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 2)),
                  backgroundColor: MaterialStateProperty.all(Color(0xFFF26A38)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Container(
                  alignment: Alignment.center,
                  width: 500, //width * 0.8,
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignupPage(
                            isAgent: false,
                          )),
                );
              })
        ]),
      )),
    ]));
  }
}
