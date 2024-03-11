import 'package:flutter/material.dart';
import 'package:profile/Model/profile_model.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({Key? key, required this.profileModel}) : super(key: key);
  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: FadeInImage(
          image: AssetImage(profileModel.img),
          placeholder:
          AssetImage("assets/img/placeHolder.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
