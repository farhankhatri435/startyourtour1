import 'package:flutter/material.dart';
import 'package:startyourtour/widgets/cardwidget.dart';
import 'package:startyourtour/widgets/packagecard.dart';

class ItemDetailScreen extends StatefulWidget {
  String region = '';
  String imageroute = '';
  String place = '';
  ItemDetailScreen({this.region, this.place, this.imageroute});
  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  ScrollController _controller;
  bool silverCollapsed = false;
  String myTitle;

  @override
  void initState() {
    super.initState();
    myTitle = widget.region + ' , ' + widget.place;

    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.offset > 50 && !_controller.position.outOfRange) {
        if (!silverCollapsed) {
          // do what ever you want when silver is collapsing !

          myTitle = widget.region;
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_controller.offset <= 180 && !_controller.position.outOfRange) {
        if (silverCollapsed) {
          // do what ever you want when silver is expanding !

          myTitle = widget.region + ' , ' + widget.place;
          silverCollapsed = false;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    /// Hero animation for image
    bool saved = true;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          /// Appbar Custom using a SliverAppBar
          SliverAppBar(
            backgroundColor:
                Theme.of(context).primaryIconTheme.color.withOpacity(0.9),
            iconTheme: IconThemeData(color: Colors.white, size: 30.0),
            expandedHeight: 300.0,
            collapsedHeight: 140,
            elevation: 5,
            toolbarHeight: 140,
            leadingWidth: 75,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    width: 55,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: Center(child: Icon(Icons.arrow_back_ios_new)))),
            actions: [
              Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle),
                  width: 55,
                  child: Center(child: Icon(Icons.bookmark)))
            ],
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(myTitle,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                // title: Padding(
                //   padding: const EdgeInsets.only(bottom: 40.0),
                //   child: Text(
                //     widget.region + ' , ' + widget.place,
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   ),
                // ),
                background: Material(
                  child: new DecoratedBox(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage(widget.imageroute),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 350.0),
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )),
          ),

          /// Container for description to Sort and Refine
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.place,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                saved = !saved;
                              });
                            },
                            child: Icon(
                              saved == true
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              color: Colors.orange,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          'loremhiurh voershtiu sc fiu rs dsygyuggsyugsusui ghsdu husyg yidfo gweriy gyuergwe g dsig droy g gydvauy fufyu u aeuyr yuse vyus vsyu vry gfyovgyov eyrv by gbyrs bvyoer brug beriuo g',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Packages',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              )),
                          GestureDetector(
                              onTap: () {},
                              child: Text('View All',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14.0,
                                  )))
                        ],
                      ),
                      ListView.builder(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) {
                          return PackageCard();
                        },
                        itemCount: 5,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Create Grid Item
        ],
      ),
    );
  }
}
