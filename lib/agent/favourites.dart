import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/bigcontainer.dart';
import 'package:startyourtour/widgets/line_widget.dart';

class SavedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Column(children: [
        LineWidget(),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Follow Requests',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Row(
                children: [
                  Text(
                    '7',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  )
                ],
              )
              // Icon(
              //   Icons.arrow_forward_ios_outlined,
              //   color: Theme.of(context).primaryIconTheme.color,
              //   size: 30,
              // ),
            ],
          ),
        ),
        LineWidget(),
        Expanded(
          child: ListView(
            children: [
              BigContainer(
                imageroute: 'assets/ab.jpg',
                titletext: 'Baniff National Park',
                subtext: 'Canada',
              ),
              BigContainer(
                imageroute: 'assets/ab.jpg',
                titletext: 'Baniff National Park',
                subtext: 'Canada',
              ),
              BigContainer(
                imageroute: 'assets/ab.jpg',
                titletext: 'Baniff National Park',
                subtext: 'Canada',
              ),
              BigContainer(
                imageroute: 'assets/ab.jpg',
                titletext: 'Baniff National Park',
                subtext: 'Canada',
              )
            ],
          ),
        )
      ]),
    );
  }
}
