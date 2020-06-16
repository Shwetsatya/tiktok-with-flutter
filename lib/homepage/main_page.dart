import 'package:creative/homepage/components/trending.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2>
    with TickerProviderStateMixin {
  PageController pageController;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        Trending(),
      ],
      onPageChanged: (int index) {
        setState(
          () {
            currentIndex = index;
          },
        );
      },
    );
  }
}
