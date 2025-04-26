import 'package:flutter/material.dart'; // Import Flutter Material Design package
import 'screen/MyInfoScrean.dart'; // Import the custom screen

void main() {
  runApp(MyApp()); // Entry point of the app
}

// Root widget of the application
class MyApp extends StatelessWidget {
  // Main app class extending StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Info App', // Application title
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: MyInfoScrean(), // Set the home screen to MyInfoScreen
    );
  }
}
