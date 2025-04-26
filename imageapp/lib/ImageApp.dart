import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(// basic structure for the screen 
      backgroundColor: const Color.fromARGB(235, 235, 229, 224),
      appBar: AppBar( // top section on the screan  
        centerTitle: true,
        title: Text('Random Image App',
        style: TextStyle(
          fontSize: 30 , letterSpacing: 1
          ),
        ),
        backgroundColor: const Color.fromARGB(235, 235, 228, 221),
        elevation: 0.0,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(// to give the app par slightly rounded courner left and right
          bottomLeft:Radius.circular(23),
          bottomRight: Radius.circular(23),
         )
         ),
      ),

    
    body: SafeArea(//ensure the content is display within the visible screen area
      child: Padding(
        padding: EdgeInsets.all(16.0),//add 16 pixel of space on all side 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            Padding( // first child for the column 
              padding: const EdgeInsets.only(top: 22),//add 22 pixel of space on top only
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [// the children for the row
                  ClipRRect(//firt child 
                    borderRadius: BorderRadius.circular(55),
                    child: Container(
                      height: 300,
                      width: 200,
                      child:Image(
                        image: NetworkImage("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg"),
                        fit: BoxFit.contain,
                        
                          ),
                          
                      ),
                  ),
              
                 SizedBox(width: 20),// to give space between the widget horizently 
                 
                 
                  
                      Container(// second child for the rwo
                    child:Expanded(
                      child:  Text('A designer person with mountains in the background holding a camera',
                      style:
                       TextStyle(
                        fontSize: 16,
                      ),
                      ),
                      ),
                  ), 
                  
                 
                  
                      

                          ],
                ),
            ),

             
             Container( // second child for the column take the icon 
              child: Icon(Icons.camera_alt),
              alignment: Alignment.topCenter,
              ),
            
            Divider(height: 40.0, color: Colors.grey,), // to give line between pic &text // child 
            //  child for coloumn text 
            Text('“A creative designer stands confidently with majestic mountains rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light highlights the determination on his face, blending his passion for design and photography with the serenity of the wilderness.”',
           style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w300 ,),
            ),
            
            SizedBox(height: 50), // give space  vertical 

            ElevatedButton.icon( // boutton have text whith shape border child 
              onPressed: (){}, label: Text('change image' ,style: TextStyle(color: Colors.black , fontSize: 18), ),
    
              style:ElevatedButton.styleFrom(
                minimumSize: Size(327, 50),
                iconColor: Color.fromARGB(235, 235, 229, 224),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))
                )
              ) ,
              ),

          ],
        ),
        )
        ),
    );
  }
}