import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Random Image App",
            selectionColor: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 55, 72, 35),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    child: Image.network(
                      "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                      width:
                          20), //Long distance between the image and the text next to it
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'A designer person\nwith mountains in the background',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'holding a camera',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Icon(Icons.camera_alt, size: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness."',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  //Location of the code that controls the button
                },
                child: const Text('Change Image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
