import 'package:flutter/material.dart';
import 'package:project_user_interface/Screens/home_page.dart';

void main(){ //first point of entery for dart but it doesnt show up to the user
  runApp(const MyApp());// runApp first entry point for flutter but it doesnt show up to the user 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // is responsibe for the design and theme for android and it doesnt show to the user
     debugShowCheckedModeBanner: false,
     home: const HomePage(),

    );
  }
}

