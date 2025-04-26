import 'package:flutter/material.dart';
import 'package:project_user_interface/home.dart';

void main() {
  runApp(const MyApp()); // Run the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: HomeScreen(),
    ); // Set the home screen
  }
}
