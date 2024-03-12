import 'package:flutter/material.dart';
import 'package:profile/Model/profile_model.dart';
import 'package:profile/View/home/widget/feed_post_widget.dart';
import 'package:profile/View/home/widget/story_widget.dart';
import '../widget/line_widget.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController scrollController;

  const HomeScreen({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            //top stories
            SliverPadding(
              padding: EdgeInsets.only(right: 15, top: 15, left: 15),
              sliver: SliverToBoxAdapter(
                child: Container(
                  // color: Colors.red,
                  height: height > 420 ? height * 0.13 : width * 0.13,
                  child: UserStory(),
                ),
              ),
            ),
            //line
            LineWidget(),
            // //post
            SliverList.builder(
              itemBuilder: (context, index) {
                return UserFeedPost(
                  index: index,
                );
              },
              itemCount: profileList.length,
            ),
          ],
        ),
      ),
    );
  }
}
