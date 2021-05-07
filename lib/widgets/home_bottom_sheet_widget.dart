import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_instagram/data/model/story_model.dart';

class HomeBottomSheetWidget extends StatelessWidget {
  final List<StoryModel> storyModell;

  HomeBottomSheetWidget(this.storyModell);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.965),
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        expand: false,
        builder: (_, controller) {
          return Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 12, bottom: 12),
                  child: Text(
                    "Sent to",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      margin: EdgeInsets.only(
                          left: 12, right: 12, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("lib/assets/images/avt_1.jpeg"))),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write a messager",
                            hintStyle: Theme.of(context).textTheme.bodyText2,
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(

                  margin:
                      EdgeInsets.only(left: 16.0, right: 16, top: 8, bottom: 8),
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      focusColor: Colors.grey[300],
                      filled: true,
                      hintText: "Search",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                      contentPadding: EdgeInsets.only(
                          left: 20, right: 20, bottom: 1, top: 1),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.people),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: controller,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                      "lib/assets/images/avt_1.jpeg"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Name hehe",
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 28,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Send")),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
