import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About me',
          style: TextStyle(
            // Makes the text bold
            fontWeight: FontWeight.bold,
            // Makes the text italic
            fontStyle: FontStyle.italic,
          ),
        ),
        // Sets AppBar background color to red
        backgroundColor: Color.fromRGBO(187, 190, 255, 1),
      ),

      // Side Drawer menu
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // A single item in the Drawer
            ListTile(
              // Icon for the item
              leading: Icon(Icons.person),
              title: Text('About me'),
              onTap: () {
                // Closes the Drawer when tapped
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Main body content
      body: Container(
        color: Color.fromRGBO(247, 247, 247, 0),

        // Allows scrolling if content overflows
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Name heading
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20, bottom: 50),
                child: Text(
                  "Abdulaziz Alotaibi",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(157, 161, 241, 1),
                  ),
                ),
              ),

              // Row containing image and skills
              Row(
                children: [
                  Image.network(
                    width: 180,
                    height: 200,
                    "https://www.kindpng.com/picc/m/370-3704903_programmer-illustration-hd-png-download.png",
                  ),

                  // Skills description
                  Column(
                    children: [
                      SizedBox(
                        height: 200,
                        child: Column(
                          children: [
                            Text(
                              "Skills ",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(157, 161, 241, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            // List of skills
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "React.js,Redux,JavaScript\nHTML,CSS,Bootstrap\n\n Node.js , Express.js \nRESTful APIs , MongoDB",
                              ),
                            ),

                            // Button with laptop icon
                            ElevatedButton(
                              onPressed: () => print("hi"),
                              child: Icon(Icons.laptop_chromebook_outlined),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Summary section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.white, Color.fromRGBO(187, 190, 255, 1)],
                  ),
                ),
                width: 1000,

                padding: EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  children: [
                    // "Summary" heading
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Summary",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(157, 161, 241, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Summary text
                    Wrap(
                      children: [
                        Text(
                          "Motivated and detail-oriented Software Engineering Graduate with a solid foundation in programming, software development, and problem-solving. Skilled in working with front-end and back-end technologies, databases, and agile methodologies. Passionate about building efficient, scalable software solutions and eager to contribute to innovative projects in a collaborative team environment. Known for a strong work ethic, adaptability, and commitment to learning new technologies to solve real-world challenges effectively. Successfully implemented E-Commerce Store Project by using React, Node.js, Bootstrap, and MongoDB. Seeking an entry-level position where I can leverage my programming skills, problem-solving abilities, and understanding of software development processes. ",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
