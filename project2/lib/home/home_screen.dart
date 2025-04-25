import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here the appbar is created
      appBar: AppBar(
        title: Center(child: Text('Random image app',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),),
        backgroundColor: const Color.fromARGB(255, 97, 76, 175),
        toolbarHeight: 100,
      ),

      //here created SingleChildScrollView() so the user can scroll down if the phone was vertical
      body: SingleChildScrollView(
        // Wrap() For Row() if the Row element is out of the phone interface it will be in the new line
        child: Wrap(
          children: [
            //the padding for  the sized box that contians the image
            Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 0, 0),

              //SizedBox used to control the width and the highet if needed
              child: SizedBox(
                child: Image.network(
                  'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                  width: 150,
                ),
              ),
            ),

            //the padding for  the sized box that contians the Texts Column() and the camera Icon
            Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
              //SizedBox used to control the width and the highet if needed
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('A designer person\n'),
                    Text('With mountains in the background\n'),
                    Text('holding a camera\n'),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ),
            //The area of the long text
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 350,
                  height: 150,
                  child: Text(
                    '"A creative designer stands confidently with majestic mountains raising behind him. He holds a professional camera in his hands, ready to capture the beauty around him the natural light highlights the determination on his face, blending his passion for design and phorography with the serenity of the wilderness"',
                  ),
                ),
              ),
            ),
            //Here is the button
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Change image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
