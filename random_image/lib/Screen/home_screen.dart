import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title and themed background color
      appBar: AppBar(
        title: Text("Random Image App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      //Main content
      body: Center(
        // Add padding around the main content
        child: Padding(
          padding: EdgeInsets.only(left: 8, top: 25, right: 8, bottom: 0),
          // Column to arrange widgets vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Row to arrange image and description side by side
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // Card containing the network image
                  Card(
                    elevation: 10.0,
                    margin: EdgeInsets.all(5),
                    // add image from network and ensure image covers the space
                    child: Image.network(
                      'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Card containing the image description and camera button
                  Card(
                    elevation: 10.0,
                    margin: EdgeInsets.all(5),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('A designer person '),
                          SizedBox(height: 25),

                          Text('with mountains in the background'),
                          SizedBox(height: 25),

                          Text('holding a camera'),
                          SizedBox(height: 25),

                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Icon(Icons.photo_camera),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Card containing the detailed description paragraph
              Card(
                elevation: 10.0,
                margin: EdgeInsets.all(5),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    '"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness."',
                  ),
                ),
              ),
              SizedBox(height: 20),
              //Button for Changing image
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Change Image'),
                  icon: Icon(Icons.change_circle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
