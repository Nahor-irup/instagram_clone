import 'package:flutter/material.dart';
import 'package:profile/home/home_screen.dart';
import 'package:profile/profile/profile_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
