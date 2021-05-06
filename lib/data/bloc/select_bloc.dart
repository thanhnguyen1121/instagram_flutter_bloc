import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/model/select_page/select_model.dart';
import 'package:flutter_bloc_instagram/pages/select_page/select_state.dart';

class SelectBloc extends Cubit<SelectState> {
  SelectBloc() : super(SelectState.loading());

  void init() {
    Future.delayed(Duration(seconds: 2), () {
      emit(SelectStateData(SelectModel(0)));
      // emit(SelectState.error("loi roi"));
    });
  }

  void changeBottomIndex(int index) {
    emit(SelectStateData(SelectModel(index)));
  }
}
