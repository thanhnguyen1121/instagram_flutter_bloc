import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel model;

  StoryWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.purple],
                )),
            child: Container(
              padding: EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("lib/assets/images/avt_1.jpeg"),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 4),
              child: Text(
                "thanhnguyen",
                style: Theme.of(context).textTheme.caption,
              ))
        ],
      ),
    );
  }
}
