import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:profile/Model/profile_model.dart';

class UserPost extends StatelessWidget {
  final int index;

  const UserPost({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // height: 500,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          //post user detail
          Padding(
            padding:
            const EdgeInsets.only(left: 15, top: 3, right: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    profileList[index].img,
                    height: 55,
                    width: 55,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  profileList[index].username.trim(),
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
          //post image
          Container(
            // color: Colors.green,
            height: 300,
            child: FadeInImage(
              placeholder: AssetImage("assets/img/placeHolder.png"),
              image: AssetImage(profileList[index].img),
              fit: BoxFit.cover,
            ),
          ),
          //post reaction and description
          Padding(
            padding: EdgeInsets.only(left: 15, top: 8, right: 15),
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
                SizedBox(height: 5),
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
                Text(
                  "View all 68 comments",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
