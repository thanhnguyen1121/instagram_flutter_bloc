// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return PostModel(
    json['author'] as String,
    json['authorAvt'] as String,
    json['postImg'] as String,
    json['postContent'] as String,
    json['postLike'] as int,
    json['postComent'] as int,
    json['isFavorite'] as bool,
  );
}

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'author': instance.author,
      'authorAvt': instance.authorAvt,
      'postImg': instance.postImg,
      'postContent': instance.postContent,
      'postLike': instance.postLike,
      'postComent': instance.postComent,
      'isFavorite': instance.isFavorite,
    };
