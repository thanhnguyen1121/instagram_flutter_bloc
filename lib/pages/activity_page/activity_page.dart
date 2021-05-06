import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  static const ROUTE_NAME = 'ActivityPage';

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  static const TAG = 'ActivityPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("activity_page"),
        ),
      ),
    );
  }
}
