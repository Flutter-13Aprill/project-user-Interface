import 'package:flutter/material.dart';
import 'package:ui_project/Containers/change_image_button.dart';
import 'package:ui_project/Containers/description_body.dart';
import 'package:ui_project/Containers/description_title.dart';
import 'package:ui_project/Containers/photograper_pic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 117, 4),
        centerTitle: true,
        title: const Text(
          "Random image app",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),

      body: const Column(
        children: [
          Row(
            children: [
              SizedBox(height: 364),
              PhotohorapherPic(), 
              DescriptionTitle()],
          ),
          Row(children: [
            SizedBox(height: 145,),
            Expanded(child: DescriptionBody()),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ChagngeImageButton()
          ],)
        ],
      ),
    );
  }
}
