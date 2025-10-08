import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_action_button.dart';
import 'package:flutter/material.dart';

class BookDetailsActionsButtonSection extends StatelessWidget {
  const BookDetailsActionsButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: BookDetailsActionButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              title: "19.99",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: BookDetailsActionButton(
              backgroundColor: Colors.deepOrange,
              textColor: Colors.white,
              title: "free preview",
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
