import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      child: Card(
        child: Image(
          image: AssetImage("assets/images/avatar.png"),
        ),
      ),
    );
  }
}
