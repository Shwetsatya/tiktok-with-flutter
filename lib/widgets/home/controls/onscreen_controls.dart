import 'package:creative/animations/spinner_animation.dart';
import 'package:creative/creator_data/creator_profile.dart';
import 'package:creative/widgets/home/audio_spinner_icon.dart';
import 'package:creative/widgets/home/controls/video_control_action.dart';
import 'package:creative/widgets/home/video_metadata/video_desc.dart';
import 'package:flutter/material.dart';

Widget onScreenControls() {
  Icon like;
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(flex: 5, child: videoDesc()),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 60, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: creatorProfile(),
                ),
                FlatButton(
                    onPressed: () {},
                    child: videoControlAction(
                        icon: Icons.thumb_up, label: "17.8k")),
                FlatButton(
                    onPressed: () {},
                    child:
                        videoControlAction(icon: Icons.comment, label: "130")),
                FlatButton(
                    onPressed: () {},
                    child: videoControlAction(
                        icon: Icons.share, label: "Share", size: 27)),
                FlatButton(
                    onPressed: () {},
                    child: SpinnerAnimation(body: audioSpinner()))
              ],
            ),
          ),
        )
      ],
    ),
  );
}
