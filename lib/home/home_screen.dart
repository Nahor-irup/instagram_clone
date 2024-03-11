import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                  ),
                                  SizedBox(height: 5),
                                  Text("rohan"),
                                ],
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
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
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 5),
              sliver: SliverToBoxAdapter(
                child: Container(
                  color: Colors.red,
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 3, right: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "username",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        // color: Colors.green,
                        height: 300,
                        child: FadeInImage(
                          placeholder: AssetImage("assets/img/placeHolder.png"),
                          image: AssetImage("assets/img/4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 3, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 32,
                                ),
                                SizedBox(width: 15),
                                Transform.flip(
                                  flipX: true,
                                  child: Icon(
                                    Icons.messenger_outline,
                                    size: 32,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.send_outlined,
                                  size: 32,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.bookmark_outline_outlined,
                                  size: 32,
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                text: "username ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: Faker().lorem.sentence(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
