import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/data/model/comment_model.dart';

class CommentWidget extends StatelessWidget {
  final CommentModel commentModel;

  CommentWidget(this.commentModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("lib/assets/images/avt_1.jpeg"),
                radius: 18,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        softWrap: true,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "thanhnguyen.98",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          TextSpan(
                            text:
                                " hehehehehedslkfjsdlkfsjddfdsfgdsfgdsfgdsfgsdfgdsfgsdfgs",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Row(
                          children: [
                            Text(
                              "19h",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(commentModel.isCreator?"Creator" :"Reply"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             !commentModel.isCreator? IconButton(
                  icon: commentModel.isFavorite
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                  onPressed: () {}):SizedBox.shrink()
            ],
          ),
          commentModel.isCreator
              ? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey,
                  ),
              )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
