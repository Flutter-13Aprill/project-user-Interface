import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Random image app",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 35, 99, 37),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          //make the contant conant left
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 140,
                  height: 300,
                  // color: Colors.amberAccent,
                  child: Image.network(
                    "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      "A designer person ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "with mountains in the background ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "holding a camera ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 100,
                      height: 100,
                      child: Icon(Icons.camera_alt),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 130,

                    child: Text(
                      "\"A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.\"",
                    ),
                  ),
                ),
              ],
            ),
              
            Container(
              alignment: Alignment(0, 0),
              child:ElevatedButton(onPressed: () {}, child: Text("change image")),
            ),
          ],
        ),
      ),
    );
  }
}
