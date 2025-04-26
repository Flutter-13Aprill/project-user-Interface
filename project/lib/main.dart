// import 'package:basic_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}


  
