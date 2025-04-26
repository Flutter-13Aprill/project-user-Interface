import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 120, //to resize the app bar

        title: Text(
          "Random image app",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 26, 106, 16),
      ),

      body: Container(
        padding: const EdgeInsets.all(16), //to offset from the app bar
        child: Column(
          //to arrange the image with text description below vertically
          children: [
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //to align the image with the text

              children: [
                Container(
                  //to align the image and the text
                  height: 250,
                  width: 200,
                  child: Image.network(
                    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                  ),
                ),

                SizedBox(width: 10), //spaces between image and text
                Column(
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start, //align the icon with the text
                      children: [
                        Text(
                          "A desginer person\n\nwith mountains in the\n background\n\nholading a camera",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 30),
                        Icon(Icons.camera_alt, color: Colors.green, size: 30.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 25),
            Text(
              "\"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.\"",
              style: TextStyle(),
            ),

            SizedBox(height: 25),
            ElevatedButton(child: Text('Create image'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
