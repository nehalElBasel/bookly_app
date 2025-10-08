import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_image_section.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/books_details_similar_listview.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomBookDetailsAppbar(),
                  BookDetailsImageSection(),
                  Expanded(child: SizedBox(height: 50)),
                  BooksDetailsSimilarListview(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
