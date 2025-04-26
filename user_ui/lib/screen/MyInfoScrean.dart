import 'package:flutter/material.dart'; // Import Flutter Material Design package

class MyInfoScrean extends StatelessWidget {
  // Main screen widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Info', // Title text
          style: TextStyle(
            color: Colors.white, // White text color
            fontWeight: FontWeight.bold, // Bold text style
          ),
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.grey[800], // AppBar background color
      ),

      // Body of the screen with padding
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Outer padding
        child: Column(
          children: [
            // Green container with app title text
            Container(
              width: double.infinity, // Full width
              padding: EdgeInsets.all(16), // Inner padding
              decoration: BoxDecoration(
                color: Colors.green[700], // Green background color
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Center(
                child: Text(
                  'Random image app', // App header title
                  style: TextStyle(
                    color: Colors.white, // White text color
                    fontSize: 22, // Text size
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
              ),
            ),

            SizedBox(height: 24), // Space between widgets

            // Row containing an image and description
            Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align at the top
              children: [
                // Left side: Image with rounded corners
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(12), // Rounded image corners
                  child: Image.network(
                    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg', // Image URL
                    width: 180, // Image width
                    height: 240, // Image height
                    fit: BoxFit.cover, // Cover the space
                  ),
                ),
                SizedBox(width: 16), // Space between image and text

                // Right side: Description texts and icon
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to start
                    children: const [
                      Text('A designer person'), // Line 1
                      SizedBox(height: 16),
                      Text('with mountains in the background'), // Line 2
                      SizedBox(height: 16),
                      Text('holding a camera'), // Line 3
                      SizedBox(height: 16),
                      Icon(Icons.photo_camera_outlined), // Camera icon
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24), // Space before paragraph

            // Paragraph describing the image
            const Text(
              "A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.",
              textAlign: TextAlign.justify, // Justify text
              style: TextStyle(fontSize: 14), // Paragraph text style
            ),

            SizedBox(height: 24), // Space before button

            ElevatedButton(
              onPressed: null, // No action assigned
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purple.shade100, // Light purple background
              ),
              child: const Text("Change Image"), // Button label
            ),
          ],
        ),
      ),
    );
  }
}
