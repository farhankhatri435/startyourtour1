import 'package:flutter/material.dart';
import 'package:startyourtour/agent/itemdetialslist.dart';
import 'package:startyourtour/agent/quotedetailscreen/quoteoverview.dart';

class QuoteContainer extends StatelessWidget {
  var titletext = '';
  var subtext = '';
  var imageroute = '';
  var price;
  QuoteContainer({this.imageroute, this.subtext, this.titletext, this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuoteDetailScreen(),
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: 200,
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
                  Center(
                    child: Text(
                      'Kashmir' + ' To ' + 'Kanyakumari',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Quotes: 1',
                          //titletext,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Text('Post date :05/11/2021', //price.toString(),
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w700))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2 People', //subtext,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text('Rs.  ' + price.toString() + ' /person',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w700))
                      ])
                ],
              ),
            )),
            // Positioned(
            //   top: 0,
            //   right: 0,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Color(0xFFEF8203),
            //         borderRadius:
            //             BorderRadius.only(topRight: Radius.circular(15.0))),
            //     height: 40,
            //     width: 30,
            //     child: Icon(
            //       Icons.bookmark_outlined,
            //       color: Colors.white,
            //     ),
            //   ),
            // )
          ]),
        ));
  }
}
