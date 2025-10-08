import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment!,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow),
        SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(width: 5),
        Opacity(opacity: 0.5, child: Text("(2390)", style: Styles.textStyle14)),
      ],
    );
  }
}
