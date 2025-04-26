import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: Image.network(
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
