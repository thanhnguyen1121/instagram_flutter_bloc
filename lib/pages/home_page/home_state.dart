import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState(
      List<StoryModel> storyModels, List<PostModel> PostModels) = HomeStateData;

  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.error(dynamic error) = HomeStateError;
}
