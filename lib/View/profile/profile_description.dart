import 'package:flutter/material.dart';

class ProfileDescriptionScreen extends StatelessWidget {
  const ProfileDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String arguments =
        ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.red,
                height: 200,
                // width: MediaQuery.of(context).size.width,
                // width: double.infinity,
                child: FadeInImage(
                  width: MediaQuery.of(context).size.width,
                  placeholder: AssetImage("assets/img/placeHolder.png"),
                  image: AssetImage(arguments),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
