import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class OpenVideoRecorder extends StatefulWidget {
  @override
  _OpenVideoRecorderState createState() => _OpenVideoRecorderState();
}

class _OpenVideoRecorderState extends State<OpenVideoRecorder> {
  File videoFile;

  _video() async {
    File theVid = await ImagePicker.pickVideo(
      source: ImageSource.gallery,
    );
    if (videoFile != null) {
      setState(() {
        videoFile = theVid;
      });
    }
  }

  _record() async {
    File theVid = await ImagePicker.pickVideo(
      source: ImageSource.camera,
    );
    if (theVid != null) {
      setState(() {
        videoFile = theVid;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.brown,
          height: MediaQuery.of(context).size.height * (30 / 100),
          width: MediaQuery.of(context).size.width * (100 / 100),
          child: videoFile == null
              ? Center(
                  child: Icon(
                    Icons.videocam,
                    color: Colors.red,
                    size: 50.0,
                  ),
                )
              : FittedBox(
                  fit: BoxFit.contain,
                  child: mounted
                      ? Chewie(
                          controller: ChewieController(
                            videoPlayerController:
                                VideoPlayerController.file(videoFile),
                            aspectRatio: 3 / 2,
                            autoPlay: true,
                            looping: true,
                          ),
                        )
                      : Container(),
                ),
        ),
        RaisedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Camera'), Icon(Icons.camera)],
          ),
          onPressed: () {
            _record();
          },
        ),
        RaisedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Camera'), Icon(Icons.add_a_photo)],
          ),
          onPressed: () {
            _video();
          },
        ),
      ],
    );
  }
}
