import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Horizontal layout
      children: [
        Expanded(
          // Take available space
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20), // Left padding
                child: Text('''
I'm a Flutter enthusiast learning to build clean and beautiful mobile UIs. I enjoy experimenting with layouts and aim to become a skilled mobile app developer.
          ''', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
