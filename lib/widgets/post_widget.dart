import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/data/model/post_model.dart';

class PostWidget extends StatefulWidget {
  final PostModel postModel;
  final onClickFavorite;
  final onClickComment;
  final onClickShare;
  final onClickTag;

  PostWidget(this.postModel,
      {this.onClickFavorite,
      this.onClickComment,
      this.onClickShare,
      this.onClickTag});

  static const ROUTE_NAME = 'PostWidget';

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget>
    with SingleTickerProviderStateMixin {
  static const TAG = 'PostWidget';
  AnimationController? controller;
  Animation<double>? animation;

  var _size = 30.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 30.0 : 0.0;
      _large = !_large;
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        new AnimationController(duration: Duration(seconds: 3), vsync: this)
          ..addListener(() => setState(() {}));
    animation = Tween(begin: 0.0, end: 30.0).animate(controller!);
    // controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 16.0, right: 16.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      widget.postModel.authorAvt,
                    ),
                    radius: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(widget.postModel.author,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined)
            ],
          ),
        ),
        Image.asset(widget.postModel.postImg),
        Column(),
        // Transform.translate(
        //   child: Transform.translate(
        //       offset: Offset(0.0, animation!.value),
        //       child: Image.asset(
        //         'lib/assets/images/avt_1.jpeg',
        //         width: 30,
        //         height: 30,
        //       )),
        //   offset: Offset(0.0, -animation!.value),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    icon: widget.postModel.isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite_border),
                    onPressed: () {
                      widget.onClickFavorite();
                    }),
                IconButton(
                    icon: Icon(Icons.mode_comment_outlined),
                    onPressed: () {
                      widget.onClickComment();
                    }),
                IconButton(
                    icon: Transform.rotate(
                        angle: 276,
                        child: FractionalTranslation(
                            translation: Offset(0.2, -0.15),
                            child: Icon(Icons.send))),
                    onPressed: () {
                      widget.onClickShare();
                    })
              ],
            ),
            IconButton(
                icon: Transform.rotate(
                    angle: -1.6,
                    child: Icon(Icons.label_important_outline_sharp)),
                onPressed: () {
                  // _updateSize();
                  controller!.forward();
                })
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            widget.postModel.postLike.toString() + " Likes",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 4),
            child: ExpandableText(
              widget.postModel.postContent,
              expandText: 'show more',
              collapseText: 'show less',
              maxLines: 2,
              linkColor: Colors.grey,
              style: Theme.of(context).textTheme.caption,
            )),
        widget.postModel.postComent != 0
            ? Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 4),
                child: Text(
                  "View all ${widget.postModel.postComent} comments",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              )
            : SizedBox.shrink(),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 4),
          child: Text(
            "2 days ago",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )
      ],
    );
  }
}
