import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Horizontal layout
      children: [
        Padding(
          // Padding for image
          padding: const EdgeInsets.only(left: 20, top: 12),
          child: SizedBox(
            height: 190,
            width: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60), // Round corners
              child: Image.network(
                'https://i.imgur.com/0kV4dhK.png', // Image URL
                fit: BoxFit.fill, // Fit image to box
              ),
            ),
          ),
        ),
        Column(
          // Vertical layout for text and icons
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              // Padding for text
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: SizedBox(
                width: 150,
                child: Text('''
    Hi, I am Nora 
    Flutter app 
    developer ..
    ''', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              // Icons layout
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Colors.amber,
                  ),
                ),
                Padding(
                  // Padding between icons
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.email, size: 30, color: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
