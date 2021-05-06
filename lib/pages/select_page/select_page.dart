import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_instagram/data/bloc/select_bloc.dart';
import 'package:flutter_bloc_instagram/pages/activity_page/activity_page.dart';
import 'package:flutter_bloc_instagram/pages/home_page/home_page.dart';
import 'package:flutter_bloc_instagram/pages/my_account_page/my_account_page.dart';
import 'package:flutter_bloc_instagram/pages/search_page/search_page.dart';
import 'package:flutter_bloc_instagram/pages/select_page/select_state.dart';
import 'package:flutter_bloc_instagram/pages/video_page/video_page.dart';

class SelectPage extends StatefulWidget {
  static const ROUTE_NAME = 'SelectPage';

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  static const TAG = 'SelectPage';
  final _pageViewCtl = PageController();
  int pageIndex = 0;
  final _selectBloc = SelectBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectBloc.init();
  }

  @override
  Widget build(BuildContext context) {
    var _loading = () {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(),
          ),
        ),
      );
    };
    var _error = () {
      return Scaffold(
          body: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              child: Text("Error!")));
    };

    return BlocProvider.value(
      value: _selectBloc,
      child: BlocBuilder<SelectBloc, SelectState>(
        builder: (bloc, state) {
          return state.when(
              (selectModel) => Scaffold(
                    body: Container(
                      child: PageView(
                        // physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (index) {
                          print("page index: " + index.toString());
                          _selectBloc.changeBottomIndex(index);
                        },
                        controller: _pageViewCtl,
                        children: [
                          HomePage(),
                          SearchPage(),
                          VideoPage(),
                          ActivityPage(),
                          MyAccountPage()
                        ],
                      ),
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      onTap: (index) {
                        print("index: $index");
                        _selectBloc.changeBottomIndex(index);
                        // _pageViewCtl.animateToPage(index,
                        //     duration: Duration(milliseconds: 500),
                        //     curve: Curves.linear);
                        _pageViewCtl.jumpToPage(index);
                      },
                      currentIndex: selectModel.index,
                      selectedItemColor: Colors.black,
                      unselectedItemColor: Colors.black54,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      type: BottomNavigationBarType.fixed,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home_rounded,
                          ),
                          title: Text(""),
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search_outlined), title: Text("")),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.video_collection_rounded),
                            title: Text("")),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.favorite_border), title: Text("")),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline), title: Text("")),
                      ],
                    ),
                  ),
              loading: _loading,
              error: (error) => Scaffold(
                    body: Container(
                      alignment: Alignment.center,
                      child: Text("Error!"),
                    ),
                  ));
        },
      ),
    );
  }
}
