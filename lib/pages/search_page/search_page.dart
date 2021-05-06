import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const ROUTE_NAME = 'SearchPage';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static const TAG = 'SearchPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Search_page"),
        ),
      ),
    );
  }
}
