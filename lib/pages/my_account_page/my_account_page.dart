import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  static const ROUTE_NAME = 'MyAccountPage';

  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  static const TAG = 'MyAccountPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("My account"),
        ),
      ),
    );
  }
}
