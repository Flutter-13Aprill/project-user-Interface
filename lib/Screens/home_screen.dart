import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // These are properties will be used in the screen.
    // [imageDescription] is a detailed description of the image.
    // [imageUrl] is the URL of the image.
    const String imageDescription = "\"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.\"";
    const imageUrl = 'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg';

    return Scaffold(

      // App bar of the app
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff3E723C),
        title: Text(
          'Random image app',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        // To make padding for the entire screen
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: Column(
          children: [

            SizedBox(height: 32),

            // This row widget has the image and the deception of the image
            // I am using the [Expanded] widget to distribute the available width equally among the widgets in the Row.
            Row(
              spacing: 40,
              children: [
                Expanded(child: Image.network(imageUrl)),

                Expanded(
                  child: Column(
                    spacing: 24,

                    // Ensuring each widget is aligned to the start (left) of the Row.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('A designer person'),
                      Text('with mountains in the background'),
                      Text('holding a camera'),
                      Icon(Icons.camera_alt_rounded),

                      // Using a SizedBox to lift the widgets up and align them with the UI design.
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),

            Text(imageDescription),

            SizedBox(height: 32),

            ElevatedButton(onPressed: () {}, child: Text('Change Image')),
          ],
        ),
      ),
    );
  }
}
