import 'package:flutter/material.dart';
import 'package:project_user_interface/pages/Home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}