import 'package:flutter/material.dart';

// This class  contain the picture and its design padding.
class PhotohorapherPic extends StatelessWidget {
  const PhotohorapherPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Image.network("https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg", width: 140, height: 260, fit: BoxFit.cover,),
    );
  }
}