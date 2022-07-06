import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:startyourtour/agent/itemdetialslist.dart';

class BigContainer extends StatelessWidget {
  var titletext = '';
  var subtext = '';
  var imageroute = '';
  var price;
  BigContainer({this.imageroute, this.subtext, this.titletext, this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailScreen(
                    place: titletext, imageroute: imageroute, region: subtext),
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageroute), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 4), // changes position of shadow
                  )
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          titletext,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Text('Starting Budget', //price.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2 Packages', //subtext,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        Text('Rs.  ' + price.toString() + ' /person',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700))
                      ])
                ],
              ),
            )),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFEF8203),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(15.0))),
                height: 40,
                width: 30,
                child: Icon(
                  Icons.bookmark_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ));
  }
}
