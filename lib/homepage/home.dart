import 'package:creative/pages/discover_page.dart';
import 'package:creative/pages/home_page.dart';
import 'package:creative/pages/inbox_page.dart';
import 'package:creative/pages/me_page.dart';
import 'package:creative/pages/new_video_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    DiscoverScreen(),
    NewVideo(),
    InboxScreen(),
    MeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
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
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
