import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/widgets/search_widget.dart';

class SearchPage extends StatefulWidget {
  static const ROUTE_NAME = 'SearchPage';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<SearchPage> {
  static const TAG = 'SearchPage';
  late final _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // var searchResultWidget = (){
    //   return ListView.builder(
    //       itemCount: 100,
    //       itemBuilder: (context, index){
    //     return Text("Search Result $index");
    //   });
    // };
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(
                          left: 16, right: 16, top: 8, bottom: 8),
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "Input Something",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.grey),
                      focusedErrorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Top",
                    ),
                    Tab(
                      text: "Accounts",
                    ),
                    Tab(
                      text: "Tags",
                    ),
                    Tab(
                      text: "Places",
                    ),
                  ]),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  SearchWidget(),
                  SearchWidget(),
                  SearchWidget(),
                  SearchWidget()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
