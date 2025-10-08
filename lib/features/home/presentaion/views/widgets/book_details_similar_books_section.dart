import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_news_books.dart';
import 'package:flutter/material.dart';

class BookDetailsSimilarBooksSection extends StatelessWidget {
  const BookDetailsSimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Can May Like", style: Styles.textStyle18),
        SizedBox(height: 16),
        HomeNewsBooks(),
        // SizedBox(height: 20),
      ],
    );
  }
}
