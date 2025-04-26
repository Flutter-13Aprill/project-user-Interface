//import libraries
import 'package:flutter/material.dart';

// HomeScreen is a stateless widget that represents the main screen of the app.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides a structure for the visual interface, including an AppBar and body.
    return Scaffold(
      // Set the background color of the AppBar.
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(177, 6, 92, 26),
        title: Center(
          child: Text(
            "Random iamge app", // Title of the app displayed in the AppBar.
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold, // Bold text style.
              fontSize: 20, // Font size of the title.
              color: Colors.white, // Text color.
            ),
          ),
        ),
      ),
      body: Padding(
        // Padding around the body content.
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 20), // Space between elements.
            Row(
              children: [
                // Container to hold the image with specified width and height.
                Container(
                  width: 150,
                  height: 300,
                  //color: Colors.amber,
                  child: Image.network(
                    "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg",// Image URL.
                    fit: BoxFit.fill,// Fit the image within the container.
                  ),
                ),
                SizedBox(width: 10),// Space between the image and text.
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// Align text to the start.
                    children: [
                      Text("A designer person", style: TextStyle(fontSize: 20)),// Title text.
                      SizedBox(height: 10),// Space between text elements.
                      Text("with mountains in the background "),// Description text
                      SizedBox(height: 10),
                      Text("holding a camera "),// Description text
                      SizedBox(height: 10),
                      Container(
                        child: Icon(Icons.camera_alt),// Camera icon.
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding( // Padding for the text container.
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Text(// Detailed description of the scene.
                  "\"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.\"",
                ),
              ),
            ),
             // Button to change the image.
            ElevatedButton(onPressed: () {}, child: Text("change image")),
          ],
        ),
      ),
    );
  }
}
