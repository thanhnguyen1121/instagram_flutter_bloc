import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';
import 'package:flutter_bloc_instagram/pages/comment_post_page/comment_post_page.dart';
import 'package:flutter_bloc_instagram/pages/home_page/home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState.loading());

  void initData() {
    Future.delayed(Duration(seconds: 2), () {
      List<StoryModel> storyModels = [];
      for (int i = 0; i < 10; i++) {
        storyModels.add(StoryModel("name $i", "lib/assets/images/avt_1.jpeg"));
      }
      List<PostModel> postModels = [];
      for (int i = 0; i < 100; i++) {
        postModels.add(PostModel(
            "author$i",
            "lib/assets/images/avt_1.jpeg",
            "lib/assets/images/avt_1.jpeg",
            "Life is like a box of chocolates; sometimes you just dig out the good center parts and leave all the undesirable rest to waste.",
            i,
            i,
            false));
      }
      postModels.insert(
          0,
          PostModel(
              "author", "authorAvt", "postImg", "postContent", 0, 0, false));
      emit(HomeStateData(storyModels, postModels));
    });
  }

  void favorite(index) {
    state.maybeWhen((storyModels, postModels) {
      var postTemp = PostModel(
          postModels[index].author,
          postModels[index].authorAvt,
          postModels[index].postImg,
          postModels[index].postContent,
          postModels[index].postLike,
          postModels[index].postComent,
          !postModels[index].isFavorite);
      List<PostModel> listNew = [...postModels];
      listNew.removeAt(index);
      listNew.insert(index, postTemp);
      emit(HomeStateData(storyModels, listNew));
    }, orElse: () {
      emit(HomeState.error("Error"));
    });
  }

  void intentCommentPage(BuildContext context, PostModel postModel) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CommentPostPage(postModel)));
  }
}
