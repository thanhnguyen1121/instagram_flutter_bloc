import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  static const ROUTE_NAME = 'VideoPage';
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  static const TAG = 'VideoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Video page"),
        ),
      ),
    );
  }
}
