//Flutter's design library (buttons, texts, colors...)
import 'package:flutter/material.dart';



//StatelessWidget is a static interface that does not change or interact with the user.
class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});


//Scaffold: A structure that contains:
//AppBar"top bar",
// Body'screen content'.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        flexibleSpace: Image.network ('https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png',
        fit: BoxFit.cover,),
        toolbarHeight: 130,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    
                    //Using the Image widget to display the academy's logo
                    child: Image.asset(
                      'Asset/pic2/tuw_logo.jpg',
                      fit: BoxFit.cover,
                      
                    ),
                  ),

                  //Using the Text widget to display text at the top of the page.
                  //Using crossAxisAlignment to align text from the start.
                  SizedBox(width: 34),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bushra Alzoman',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text(
                        'Information Technology',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Flutter Bootcamp',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      

                      //Using Icons widget.
                      Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[100],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.mail,
                              color: Colors.deepPurple,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[100],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.deepPurple,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Using SizedBox to add spacing in page layout.
              SizedBox(height: 16),
              Text(
                'About me:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'A trainee at Tuwaiq Academy in the Mobile and Web Application Development Bootcamp using Flutter, and interested in the field of networking.',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),


              //using Button widget.
              SizedBox(height: 60),
              Center(
              child: ElevatedButton(
              onPressed: () {
      
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey[100],
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), 
              ),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), 
             ),
            child: Text(
            'Read more',
             style: TextStyle(
             fontSize: 16,
             color: Colors.deepPurple, 
             fontWeight: FontWeight.w500,
      ),
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}
