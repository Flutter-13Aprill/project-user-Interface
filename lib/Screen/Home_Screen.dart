import 'package:flutter/material.dart';
// Main screen widget that displays a random image and related information
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a centered title
      appBar: AppBar(
        title: Text(
          'Random image app',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 141, 17),
        centerTitle: true,
      ),
      // Main content area with padding
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Row to display image and description side by side
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image through online link
                ClipRRect(
                  child: Image.network(
                    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                    width: 180,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width:16), // Space between image and text
                // Description text and icon
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('A designer person'),
                      SizedBox(height: 24),
                      Text('with mountains in the background'),
                      SizedBox(height: 24),
                      Text('holding a camera'),
                      SizedBox(height: 24),
                      Icon(Icons.camera_alt, size: 28),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24), // Space before paragraph
            // Descriptive paragraph below the image and text
            Text(
              '"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness."',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),

            SizedBox(height: 24), // Space before the button
            // Button to "Change Image" (without functionality)
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(), // Default button styling
              child: Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}
