import 'package:json_annotation/json_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable()
class StoryModel {
  String name;
  String urlImage;


  StoryModel(this.name, this.urlImage);

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);
}
