import 'package:flutter/material.dart';
import 'package:profile/View/profile/widget/profile_grid.dart';
import 'package:profile/View/widget/line_widget.dart';
import 'package:share_plus/share_plus.dart';
import '../../Model/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  final int? index;

  const ProfileScreen({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 42, 123, 1.0),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          index != null
                              ? profileList[index!].img
                              : "assets/img/pp.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          index != null
                              ? profileList[index!].name
                              : "Rohan Puri",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Mobile App Developer",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: Size(110, 35),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: Size(5, 35),
                              ),
                              onPressed: () {
                                Share.share("Hello");
                              },
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(right: 30, left: 30, bottom: 15),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "221",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "photos",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "22k",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "292",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "following",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            LineWidget(),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 5),
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 130, //height
                  maxCrossAxisExtent: 150, //width
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, index) {
                  return ProfileGrid(profileModel: profileList[index]);
                },
                itemCount: profileList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

}


