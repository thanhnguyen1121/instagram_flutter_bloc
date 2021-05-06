import 'package:json_annotation/json_annotation.dart';

part 'select_model.g.dart';

@JsonSerializable()
class SelectModel {
  int index;

  SelectModel(this.index);

  factory SelectModel.fromJson(Map<String, dynamic> json) =>
      _$SelectModelFromJson(json);

  Map<String, dynamic> toJson() => _$SelectModelToJson(this);
}
