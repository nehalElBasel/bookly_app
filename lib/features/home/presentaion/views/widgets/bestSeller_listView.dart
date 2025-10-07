import 'package:bookly_app/features/home/presentaion/views/widgets/bestseller_item.dart';
import 'package:flutter/material.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => BestSellerItem(),
      ),
    );
  }
}
