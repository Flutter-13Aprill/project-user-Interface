import 'package:flutter/material.dart';

// This class is for the title text on the right side of the picture.
class DescriptionTitle extends StatelessWidget {
  const DescriptionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "A designer Person",
        ),
        SizedBox(height: 15),
        Text(
          "with mountains in the background",
        ),
        SizedBox(height: 15),
        Text(
          "holding a camera",
        ),
        SizedBox(height: 15),
        Icon(Icons.camera_alt)
      ],
    );
  }
}
