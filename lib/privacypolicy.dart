import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColor,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 33,
          ),
          alignment: Alignment.centerRight,
          child: Text(
            'Privacy Policy',
            style: TextStyle(
                color: Theme.of(context).primaryIconTheme.color, fontSize: 25),
          ),
        ),
        leading: Builder(builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 30, //IconTheme.of(context).size,
              onPressed: () => Navigator.pop(context),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          );
        }),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(right: 30, left: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem Ipsum',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'fsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsfff'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'fafsfsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfsffffsfsfef')
          ],
        ),
      ),
    );
  }
}
