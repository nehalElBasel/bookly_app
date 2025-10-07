import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    // return Image.asset(image);
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
        ),
      ),
    );
  }
}
