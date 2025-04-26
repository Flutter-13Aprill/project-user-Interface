import 'package:flutter/material.dart';
import 'package:project_user_interface/button.dart';
import 'package:project_user_interface/card.dart';
import 'package:project_user_interface/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('CV', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: const Color.fromARGB(255, 251, 247, 233),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10), // Add spacing
              CardImage(), // Custom card widget
              SizedBox(height: 15),
              Text1(), // Custom text widget
              SizedBox(height: 20),
              Button(), // Custom Button widget
            ],
          ),
        ),
      ),
    );
  }
}
