import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(// scaffold is like a canvas that is divided in appBar, body, botton navigationBar
//AppBar 
appBar: AppBar(

),


//Body
body: Padding(
  padding: const EdgeInsets.all(10),
  child: Column(
    
    children:[
  
  Center(
    child: Container(
    margin: const EdgeInsets.all(10),
    color: Colors.green,
    width: 374,
    height: 150,
    child: Center(
      child: Text("Random image app", 
      style: TextStyle(color: Colors.white,
       fontSize: 23, 
       fontWeight: FontWeight.bold,
       ),)),
    ),
  ),
   SizedBox(
    height: 30,
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
  Image.network('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',
  height:180 ,
  
  ),
 
   Column(
    children: [
    Center(
    child: 
    Text("A designer person\n\n with mountains in the background\n\n holding a camera ",
     style: TextStyle(color: Colors.black, 
     fontSize: 12, 
     fontWeight: FontWeight.bold,
     ),
     ),
     ),
        SizedBox(
    height: 30,
  ),
     Align(
      
       child: Icon(
        Icons.camera_alt_sharp,
         ),
     ),
   ],)
  ],),
  SizedBox(
    height: 30,
  ),
  Text("A creative designer stands confidently with majestic mountains rising behind him.  He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with serenity of wilderness. ",
     style: TextStyle(color: Colors.black, 
     fontSize: 12, 
     fontWeight: FontWeight.bold,
     ),
     ),
      SizedBox(
    height: 30,
  ),
     ElevatedButton(
      child: Text("Change Image"),
      onPressed:() {
       
     }, )
  
  ]),
),







    );
  }
}