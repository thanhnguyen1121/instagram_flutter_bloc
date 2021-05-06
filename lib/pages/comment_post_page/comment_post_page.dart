import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/bloc/comment_post_bloc.dart';
import 'package:flutter_bloc_instagram/data/model/comment_model.dart';
import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:flutter_bloc_instagram/pages/comment_post_page/comment_post_state.dart';
import 'package:flutter_bloc_instagram/widgets/comment_widget.dart';
import 'package:flutter_bloc_instagram/widgets/loading_widget.dart';

class CommentPostPage extends StatefulWidget {
  final PostModel postModel;

  CommentPostPage(this.postModel);

  static const ROUTE_NAME = 'CommentPostPage';

  @override
  _CommentPostPageState createState() => _CommentPostPageState();
}

class _CommentPostPageState extends State<CommentPostPage> {
  static const TAG = 'CommentPostPage';
  final _commnetBloc = CommentPostBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _commnetBloc.init(widget.postModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Comments",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: BlocProvider.value(
        value: _commnetBloc,
        child: BlocBuilder<CommentPostBloc, CommentPostState>(
            builder: (bloc, state) {
          return state.when(
              (commentModels) => Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView.builder(
                      itemCount: commentModels.length,
                      itemBuilder: (context, index) {
                        return CommentWidget(commentModels[index]);
                      })),
              loading: () => LoadingWidget(),
              error: (_) => Text("Error"));
        }),
      ),
    );
  }
}
