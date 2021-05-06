import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';

class YourStoryWidget extends StatelessWidget {
  final StoryModel myStory;

  YourStoryWidget(this.myStory);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(shape: BoxShape.circle),
    //   child: Stack(
    //     children: [
    //       CircleAvatar(
    //         radius: 35,
    //         backgroundImage: AssetImage("lib/assets/images/avt_1.jpeg"),
    //       ),
    //       Positioned.fill(
    //           child: Align(
    //               alignment: Alignment.bottomRight,
    //               child: Container(
    //                decoration: BoxDecoration(
    //                  shape: BoxShape.circle,
    //                  color: Colors.white
    //                ),
    //                   child: Icon(
    //                 Icons.add_circle,
    //                 color: Colors.blue,
    //               ))))
    //     ],
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("lib/assets/images/avt_1.jpeg"),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.blue,
                        )))
              ],
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
