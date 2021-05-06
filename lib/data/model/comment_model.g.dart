// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return CommentModel(
    json['commentContent'] as String,
    json['commentBy'] as String,
    json['commentByAvt'] as String,
    json['isFavorite'] as bool,
    json['timeComment'] as String,
  );
}

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'commentContent': instance.commentContent,
      'commentBy': instance.commentBy,
      'commentByAvt': instance.commentByAvt,
      'isFavorite': instance.isFavorite,
      'timeComment': instance.timeComment,
    };
