import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Wrapping button in SizedBox
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        onPressed: () {}, // Button press action
        child: Text(
          'My Portfolio',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
