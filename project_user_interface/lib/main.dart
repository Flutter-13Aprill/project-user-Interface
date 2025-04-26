// import matrial package and home screen page
import 'package:flutter/material.dart';
import 'package:project_user_interface/home_screen/home_screen.dart';
//main function
void main() {
  runApp(const MainApp());
}

//main class 
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:HomeScreen());
  }
}
