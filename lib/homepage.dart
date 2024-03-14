import 'package:flutter/material.dart';
import 'View/home/home_screen.dart';
import 'View/profile/profile_screen.dart';
import 'View/search/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(scrollController: scrollController),
          SearchScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(249, 42, 123, 1.0),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            scrollController.animateTo(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
            currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
