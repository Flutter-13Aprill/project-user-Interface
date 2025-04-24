import 'package:flutter/material.dart';
import 'package:project_user_interface/widegets/home_wdgets/ChangeImageButton.dart';
import 'package:project_user_interface/widegets/home_wdgets/Description.dart';
import 'package:project_user_interface/widegets/home_wdgets/profileCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Randowm Image App")),
        backgroundColor: Colors.redAccent,
      ),
      body:Container(
        padding: EdgeInsets.all(4),
        child: Center(
          child: Column(
            children: [
            ProfileCard(),
            Description(),
            ChangeimageButton()
            ]),
        )
      )
    );
  }
}
