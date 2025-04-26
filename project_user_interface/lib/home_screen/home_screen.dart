// import matrial package
import 'package:flutter/material.dart';

//the class of homescreen  
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  //the function that build the scaffold in the screen
  Widget build(BuildContext context) {
    // the half width of the screen
    double halfOfScreen = (MediaQuery.sizeOf(context).width / 2);
    return Scaffold(
      //the bar in the top of applecation
      appBar: AppBar(backgroundColor:const Color.fromARGB(255, 13, 110, 253), title:
      //centering the title of appbar
      Center(child: Text("Random App Image",style: TextStyle(color: Colors.white,)) )),
      //body of the app
      body: 
      //centering the main colmun
      Center(child: Container(color:const Color.fromARGB(255, 233, 233, 233), child:
      //the column that have every content of the app
         Column(mainAxisAlignment: MainAxisAlignment.start,
         //make space between the appbar and body
        children: [SizedBox(height: 10),
//first row  that have image and the comment of it
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            // column of the image
            Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              //padding that used around the image
              Padding(padding: EdgeInsets.all(10) ,child:
              //container thats contain the image
              Container(width: 140,height: 250, decoration: 
              //used to gave beuteful border for the container
              BoxDecoration(border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1),width: 3,),borderRadius: BorderRadius.circular(10),),child: 
              //used to cut the image edges and make it rounded
              ClipRRect(borderRadius: BorderRadius.circular(7),child: 
              // the image in container
              Image.network('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg',fit: BoxFit.cover,width: 140,height:250) ) ))],),
              // second column in the first row thats have comment of the image
            Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // first row for the first part of the comment
              Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
                Container(width:halfOfScreen  ,child:
                Center(child: Text('A designer person \n ',softWrap: true,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 3, 20, 169)))))]),
                // second row for the second part of the comment
                Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Container(width:halfOfScreen,child: 
                  Center(child:Text('with mountains in\n the background \n',softWrap: true,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 3, 20, 169)))))]),
                  // third row for the third part of the comment
                  Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
                    Container(width: halfOfScreen,child: 
                    Center(child:Text('holding a camera \n',softWrap: true,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 3, 20, 169) ))))]),
                    // forth row for the icon button
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera),color: const Color.fromARGB(255, 3, 20, 169),iconSize: 30,    )])])]),
                // the row that have the text under the image 
              Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [ Container(width:MediaQuery.sizeOf(context).width , padding: EdgeInsets.symmetric(horizontal: 16.0),child:Center(child: Text('" A creative designer stands confidently with majestic mountains  rising behind him. He holds a professional camera in his hands, ready to capture the beauty around him. The natural light  highlights the determination on his face, blending his passion for  design and photography with the serenity of the wilderness. "',softWrap: true,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 3, 20, 169)),)))]),SizedBox(width: 200,height:100 ),
              // the last row thats have the button (Change Image) 
              Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [ElevatedButton(onPressed: (){},style:ButtonStyle(backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 13,110,253))), child: Text('Change Image',style: TextStyle(color: Colors.white)))])],
              
              )
      ))
    );
  }
}