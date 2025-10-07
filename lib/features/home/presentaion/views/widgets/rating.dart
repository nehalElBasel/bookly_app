import 'package:bookly_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow),
        const SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text("(2390)", style: Styles.textStyle14),
      ],
    );
  }
}
