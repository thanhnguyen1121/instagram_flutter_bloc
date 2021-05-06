import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:tuple/tuple.dart';

class PostDataSource extends paging.PageKeyedDataSource<int, PostModel> {
  List<PostModel> models;

  PostDataSource(this.models) {
    isEndList = false;
  }

  @override
  Future<Tuple2<List<PostModel>, int>> loadInitial() async {
    return Tuple2(models, 1);
  }

  @override
  Future<Tuple2<List<PostModel>, int>> loadPageAfter(int params) {
    // TODO: implement loadPageAfter
    throw UnimplementedError();
  }
}
