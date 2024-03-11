import 'package:flutter/material.dart';
import 'package:profile/Model/profile_model.dart';
import 'package:profile/View/home/widget/user_post.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            //top stories
            SliverPadding(
              padding: EdgeInsets.only(right: 15, top: 15, left: 15),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 110, //ASK FOR SIR
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      // "assets/img/1.jpg",
                                      profileList[index].img,
                                      height: 80,
                                      width: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 80,
                                    child: Text(
                                      profileList[index]
                                          .username
                                          .toLowerCase()
                                          .replaceAll(' ', ''),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //line
            SliverPadding(
              padding: EdgeInsets.only(bottom: 5),
              sliver: SliverToBoxAdapter(
                child: Container(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                  height: 1.1,
                ),
              ),
            ),
            //post
            SliverList.builder(
              itemBuilder: (context, index) {
                return UserPost(index: index,);
              },
              itemCount: profileList.length,
            ),
          ],
        ),
      ),
    );
  }
}
