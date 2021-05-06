
import 'package:flutter_bloc_instagram/data/model/select_page/select_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'select_state.freezed.dart';

@freezed
abstract class SelectState with _$SelectState {
  const factory SelectState(SelectModel selectModel) = SelectStateData;
  const factory SelectState.loading() = SelectStateLoading;
  const factory SelectState.error(dynamic error) = SelectStateError;
}