import 'package:bookly_app/features/home/data/dummy_data.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/image_box.dart';
import 'package:flutter/material.dart';

class HomeNewsBooks extends StatelessWidget {
  const HomeNewsBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummyNewsBooks.length,
        itemBuilder: (context, index) {
          // return Text("1 ");
          return ImageBox(image: dummyNewsBooks[index]);
        },
      ),
    );
  }
}
