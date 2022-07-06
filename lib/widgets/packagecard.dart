import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/cardwidget.dart';
import 'package:startyourtour/agent/packagedetaillist.dart';

class PackageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PackageDetailScreen(
                      imageroute: 'assets/ab.jpg',
                      region: 'India',
                      place: 'Jamnagar',
                    )),
          );
        },
        child: CardWidget(
          height: 100,
          childWidget: Row(
            children: [
              Image.asset(
                'assets/a.jpg',
                height: 80,
                fit: BoxFit.fill,
                width: 70,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1N/2D',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16.0,
                                )),
                            Text('Rs.' + 'price' + ' /person',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0,
                                ))
                          ]),
                      Row(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.airplanemode_active),
                                Text(
                                  'Flights',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.local_taxi),
                                Text(
                                  'Cabs',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.hotel_rounded),
                                Text(
                                  '2,3 star',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.lunch_dining),
                                Text(
                                  'Meals',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove_red_eye),
                                Text(
                                  'Tour',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                      // Container(
                      //   width: 200,
                      //   child: Text(
                      //     "Etiam facilisis ligula nec velit posuere egestas.",
                      //     style:
                      //         TextStyle(color: Colors.black54, fontSize: 14.0),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
