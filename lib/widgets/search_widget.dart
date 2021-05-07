import 'dart:developer' as developer;
import 'dart:math';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  static const ROUTE_NAME = 'SearchWidget';

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>
    with AutomaticKeepAliveClientMixin<SearchWidget> {
  static const TAG = 'SearchWidget';

  @override
  Widget build(BuildContext context) {
    super.build(context);
    int count = Random().nextInt(30);
    return Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("lib/assets/images/avt_1.jpeg"),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Search Result $index",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            "Search Result Short Content $index",
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              );
            }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
