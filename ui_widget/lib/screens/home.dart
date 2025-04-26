import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 80, 24),
        title: Text(
          "Random image app",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Image.network(
                      'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 40, width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A designer person"),
                      SizedBox(height: 30, width: 30),
                      Text("""with mountains in 
the background"""),
                      SizedBox(height: 30, width: 30),
                      Text("holding a camera"),
                      SizedBox(height: 30, width: 30),
                      Icon(Icons.camera_alt),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 20, height: 20),
              Text(
                """"A creative designer stands confidently with majestic mountains rising brhind hom.he holds a professional camera in his hands,ready to capture the beauty around him.The natural light highlights the determination on his face,belding his passion for design and photography wuth the serenity of the wilderness.\"""",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 20, height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Change Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
