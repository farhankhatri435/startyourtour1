import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startyourtour/getstarted.dart';
import 'startpage.dart';
import 'checkdarkmode.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF4740C4),
      statusBarIconBrightness: Brightness.light));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: darkMode ? Colors.white : Color(0xFF212832),
          // color for white mode Colors.white
          //darkmode  color Color(0xFF212832)
          primaryColorDark: darkMode ? Color(0xFFF2F2F2) : Color(0xFF303030),
          //color for white mode Color(oxFFF2F2F2)
          // darkmode color Color(0xFF303030)
          primaryColorLight: Colors.white,
          primaryIconTheme: IconThemeData(color: Color(0xFF4740C4), size: 30),
          primarySwatch: Colors.orange,
          fontFamily: 'Poppins'),
      home: GetStarted(), //StartPage(),
    );
  }
}
