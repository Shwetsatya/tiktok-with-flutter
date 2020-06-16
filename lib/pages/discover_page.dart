import 'package:creative/discover_components/discover_trend.dart';
import 'package:creative/discover_components/search_bar.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  static final String id = 'DiscoverScreen';
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MySearchBar(),
              Trending(),
            ],
          ),
        ),
      ),
    );
  }
}
