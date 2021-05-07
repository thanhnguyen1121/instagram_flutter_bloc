import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/bloc/home_bloc.dart';
import 'package:flutter_bloc_instagram/data/model/post_model.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';
import 'package:flutter_bloc_instagram/pages/home_page/home_state.dart';
import 'package:flutter_bloc_instagram/pages/home_page/post_data_source.dart';
import 'package:flutter_bloc_instagram/widgets/home_bottom_sheet_widget.dart';
import 'package:flutter_bloc_instagram/widgets/loading_widget.dart';
import 'package:flutter_bloc_instagram/widgets/post_widget.dart';
import 'package:flutter_bloc_instagram/widgets/story_widget.dart';
import 'package:flutter_bloc_instagram/widgets/your_story_widget.dart';
import 'package:fl_paging/fl_paging.dart' as paging;

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  static const TAG = 'HomePage';
  final _homeBloc = HomeBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _homeBloc.initData();
  }

  @override
  Widget build(BuildContext context) {
    void _showSheet() {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return HomeBottomSheetWidget([]);
          });
    }

    var _content = (List<StoryModel> storyModels, List<PostModel> PostModels) {
      return ListView.builder(
          itemCount: PostModels.length,
          itemBuilder: (context, index) {
            return index == 0
                ? Container(
                    width: double.infinity,
                    height: 105,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: storyModels.length,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? YourStoryWidget(storyModels[index])
                              : StoryWidget(storyModels[index]);
                        }))
                : PostWidget(
                    PostModels[index],
                    onClickFavorite: () {
                      _homeBloc.favorite(index);
                    },
                    onClickComment: () {
                      _homeBloc.intentCommentPage(context, PostModels[index]);
                    },
                    onClickShare: () {
                      _showSheet();
                    },
                  );
          });
    };

    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.add_box_outlined), onPressed: () {}),
              Transform.rotate(
                angle: 276,
                child: FractionalTranslation(
                    translation: Offset(0, -0.1),
                    child:
                        IconButton(icon: Icon(Icons.send), onPressed: () {})),
              )
            ],
          )
        ],
      ),
      body: BlocProvider.value(
        value: _homeBloc,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: BlocBuilder<HomeBloc, HomeState>(builder: (bloc, state) {
              return state.when(
                  (storyModels, PostModels) =>
                      _content(storyModels, PostModels),
                  loading: () => LoadingWidget(),
                  error: (_) => Text("error"));
            }),
            // child: Text("homepage"),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
