import 'package:flutter/material.dart';
import 'package:plants_store_project/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Store',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
