import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:  Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius:  BorderRadius.circular(18),
            child: Image.network(
              "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg",
              width: 150,
              height: 200,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textWihtPadding("A designer person"),
              textWihtPadding("with mountains in the background"),
              textWihtPadding("holding a camera"),
              IconButton(onPressed: (){}, icon: Icon( Icons.camera_alt, size: 28))
              // iconButton(  Icon( Icons.camera_alt, size: 28))
            ],
          ),
        ),
      ],
    )
    );
   
  }
}
 textWihtPadding(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(text),
  );
}
