import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        "A creative designer stands confidently with majestic mountains rising behind him. "
        "He holds a professional camera in his hands, ready to capture the beauty around him. "
        "The natural light highlights the determination on his face, blending his passion for design "
        "and photography with the serenity of the wilderness.",
      ),
    );
  }
}