import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100,
      
        title: Center(child: Text('Random image app')),

        backgroundColor: Colors.green,
      ),
      body: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
            child: SizedBox(
              child: Image.network(
                'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('A designer person\n'),
                  Text('With mountines in the background\n'),
                  Text('holding a camera\n'),
                  Icon(Icons.camera_alt),
                ],
              ),
            ),
          ),
          Center(child: 
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),

            child: Container(
              alignment: Alignment.topCenter,
              width: 350,
              height: 150,
              child: Text(
                '"A creative designer stands confidently with majestic mountains raising behind him. He holds a professional camera in his hands, ready to capture the beauty around him the natural light highlights the determination on his face, blending his passion for design and phorography with the serenity of the wilderness"',
              ),
            ),
          ),),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Change image'),
            ),
          ),
        ],
      ),
    );
  }
}
