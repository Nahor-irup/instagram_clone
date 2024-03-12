import 'package:flutter/material.dart';

import '../../../Model/profile_model.dart';

class UserStory extends StatelessWidget {
  const UserStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 42, 123, 1.0),
                  borderRadius: BorderRadius.circular(60),
                ),
                padding: EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: FadeInImage(
                    placeholder: AssetImage("assets/img/placeHolder.png"),
                    image: AssetImage(profileList[index].img),
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
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
    );
  }
}
