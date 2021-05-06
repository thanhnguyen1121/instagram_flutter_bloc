// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) {
  return StoryModel(
    json['name'] as String,
    json['urlImage'] as String,
  );
}

Map<String, dynamic> _$StoryModelToJson(StoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'urlImage': instance.urlImage,
    };
