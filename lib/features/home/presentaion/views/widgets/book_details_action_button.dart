import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsActionButton extends StatelessWidget {
  const BookDetailsActionButton({
    super.key,
    this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
  });
  final BorderRadiusGeometry? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
