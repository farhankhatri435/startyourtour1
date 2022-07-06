import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:startyourtour/agent/homepage.dart';
import 'package:startyourtour/agent/showpost.dart';
import 'package:startyourtour/widgets/line_widget.dart';
import 'package:startyourtour/widgets/smallcontainer.dart';

class AgentMyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      //  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 320,
          child: Stack(children: [
            Container(
              width: width,
              height: 240,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage('assets/ab.jpg'), fit: BoxFit.fill)),
            ),
            Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 4), // changes position of shadow
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/a.jpg'),
                        fit: BoxFit.fitHeight)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    height: 30,
                    width: 150,
                    child: Arc(
                      height: 50,
                      arcType: ArcType.CONVEX,
                      edge: Edge.BOTTOM,
                      child: GestureDetector(
                        onTap: () {},
                        child: new Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  child: Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                )
              ]),
            )
          ]),
        ),
        Center(
          child: Text(
            "farhan khatri",
            style: TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "ahdgn@gmail.com",
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          ),
        ),
        LineWidget(),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowPost(),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Post',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(
                            favscreen: true,
                          )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add To Favourite',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.grey[600], fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: '',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                      SmallContainer(
                        imageroute: 'assets/ab.jpg',
                        text: 'USA',
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        LineWidget(),
      ],
    );
  }
}
