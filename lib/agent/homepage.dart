import 'package:flutter/material.dart';
import 'package:startyourtour/agent/categories.dart';
import 'package:startyourtour/agent/floatingbuttoninput.dart';
import 'package:startyourtour/agent/homehome.dart';
import 'package:startyourtour/agent/myprofile.dart';
import 'package:startyourtour/agent/favourites.dart';
import 'package:startyourtour/checkdarkmode.dart';
import 'package:startyourtour/customdrawer.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class HomePage extends StatefulWidget {
  bool myprofile = false;
  bool favscreen = false;
  //int selectedIndex = 0;
  HomePage({this.myprofile, this.favscreen});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int selectedIndex;
  void initState() {
    selectedIndex = widget.myprofile == true
        ? 4
        : widget.favscreen == true
            ? 3
            : 0;
  }

  void selectPage(int index) {
    setState(() {
      index == 2 ? selectedIndex = 5 : selectedIndex = index;
    });
  }

  final List<Map<String, Object>> pages = [
    {'page': MyPackages(), 'title': 'Home'},
    {'page': AvailableBids(), 'title': 'Category'},
    {'page': AddPackage(), 'title': 'Add Package'},
    {'page': SavedPage(), 'title': 'Favourites'},
    {'page': AgentMyProfile(), 'title': 'My Profile'},
    {'page': AddPackage(), 'title': 'Add Package'}
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: selectedIndex == 5 || selectedIndex == 2
                  ? Theme.of(context).primaryIconTheme.color
                  : Color(0xFFF28101),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 38,
              ),
              onPressed: () {
                selectPage(5);
              }),
        ),
      ),
      body: pages[selectedIndex]['page'],
      backgroundColor: Theme.of(context).primaryColor,
      appBar: selectedIndex == 1 || selectedIndex == 4
          ? null
          : AppBar(
              centerTitle: true,
              foregroundColor: Theme.of(context).primaryColor,
              title: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  pages[selectedIndex]['title'],
                  style: TextStyle(
                      color: Theme.of(context).primaryIconTheme.color,
                      fontSize: 25),
                ),
              ),
              leading: Builder(builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.only(top: 10),
                  child: IconButton(
                    icon: Icon(Icons.dehaze),
                    iconSize: 38, //IconTheme.of(context).size,
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                );
              }),
              elevation: 0,
            ),
      bottomNavigationBar: FFNavigationBar(
          onSelectTab: selectPage,
          selectedIndex:
              selectedIndex, //widget.myprofile == true ? 4 : selectedIndex,
          items: [
            FFNavigationBarItem(
              iconData: Icons.home_filled,
              label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.format_list_bulleted_sharp,
              label: '',
            ),
            FFNavigationBarItem(
              label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.bookmark,
              label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.person,
              label: '',
            )
          ],
          theme: FFNavigationBarTheme(
              itemWidth: 60,
              barHeight: 50,
              selectedItemBackgroundColor:
                  Theme.of(context).primaryIconTheme.color,
              selectedItemLabelColor: Theme.of(context).primaryIconTheme.color,
              barBackgroundColor: Theme.of(context).primaryColorDark,
              selectedItemIconColor: Colors.white,
              unselectedItemIconColor: Theme.of(context).primaryIconTheme.color,
              selectedItemBorderColor:
                  Theme.of(context).primaryIconTheme.color)),
      drawer: Customdrawer(),
    );
  }
}
