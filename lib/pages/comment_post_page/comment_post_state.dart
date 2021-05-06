import 'package:flutter_bloc_instagram/data/model/comment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_post_state.freezed.dart';

@freezed
abstract class CommentPostState with _$CommentPostState {
  const factory CommentPostState(List<CommentModel> commentModels) = CommentPostStateData;
  const factory CommentPostState.loading() = CommentPostStateLoading;
  const factory CommentPostState.error(dynamic error) = CommentPostStateError;
}