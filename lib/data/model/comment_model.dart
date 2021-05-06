import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel {
  String commentContent;
  String commentBy;
  String commentByAvt;
  bool isFavorite;
  String timeComment;
  bool isCreator;

  CommentModel(
      this.commentContent, this.commentBy, this.commentByAvt, this.isFavorite, this.timeComment, this.isCreator);

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}
