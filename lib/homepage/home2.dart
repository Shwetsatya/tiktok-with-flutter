import 'package:creative/homepage/main_page.dart';
import 'package:creative/pages/discover_page.dart';
import 'package:creative/pages/inbox_page.dart';
import 'package:creative/pages/me_page.dart';
import 'package:creative/pages/new_video_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex2 = 0;

  final List<Widget> _children = [
    HomeScreen2(),
    DiscoverScreen(),
    NewVideo(),
    InboxScreen(),
    MeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomItems(),
      body: _children[_currentIndex2],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex2 = index;
    });
  }

  BottomNavigationBar bottomItems() {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped, // new
      currentIndex: _currentIndex2, // new
      items: [
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text('Home'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          title: Text('Discover'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          title: Text('New'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          title: Text('Inbox'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text('Me'),
        ),
      ],
    );
  }

  Widget tikTokLog() {
    return Container(
      width: 45.0,
      height: 27.0,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.pink[300],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.blue[200],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            width: 30.0,
            height: double.infinity,
            child: Icon(Icons.add, color: Colors.black),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
