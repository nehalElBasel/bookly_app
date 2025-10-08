import 'package:bookly_app/core/utilits/assets.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_actions_button_section.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/image_box.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BookDetailsImageSection extends StatelessWidget {
  const BookDetailsImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 0.25,
        //   child: ImageBox(image: Assets.bookImage),
        // ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2,
            // vertical: 10,
          ),
          child: ImageBox(image: Assets.bookImage),
        ),

        Text("The Jungle Book", style: Styles.textStyle30),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 18),
        Rating(mainAxisAlignment: MainAxisAlignment.center),

        SizedBox(height: 37),
        BookDetailsActionsButtonSection(),
      ],
    );
  }
}
