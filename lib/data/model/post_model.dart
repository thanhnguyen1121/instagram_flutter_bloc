import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';



@JsonSerializable()
@freezed
class PostModel {
  String author;
  String authorAvt;
  String postImg;
  String postContent;
  int postLike;
  int postComent;
  bool isFavorite;

  PostModel(this.author, this.authorAvt, this.postImg, this.postContent,
      this.postLike, this.postComent, this.isFavorite);
  // const factory PostModel(
  //     String author,
  //     String authorAvt,
  //     String postImg,
  //     String postContent,
  //     int postLike,
  //     int postComent,
  //     bool isFavorite) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
