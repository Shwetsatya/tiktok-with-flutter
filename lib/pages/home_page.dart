import 'package:creative/widgets/home/controls/onscreen_controls.dart';
import 'package:creative/widgets/home/home_video_renderer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return Container(
            color: Colors.black,
            child: Stack(
              children: <Widget>[
                AppVideoPlayer(),
                onScreenControls(),
              ],
            ),
          );
        },
        itemCount: 10);
  }
}
