import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/model/comment_model.dart';
import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:flutter_bloc_instagram/pages/comment_post_page/comment_post_state.dart';

class CommentPostBloc extends Cubit<CommentPostState> {
  CommentPostBloc() : super(CommentPostState.loading());

  void init(PostModel postModel) {
    List<CommentModel> listCommnet = [
      CommentModel(
          "commentContent", postModel.author, postModel.authorAvt, false, "1d")
    ];

    int count = Random().nextInt(30);
    for (int i = 0; i < count; i++) {
      listCommnet.add(CommentModel("commentContent$i", postModel.author + "$i",
          postModel.authorAvt, false, "${i}d"));
    }
    emit(CommentPostStateData(listCommnet));
  }
}
