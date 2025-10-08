import 'package:bookly_app/core/routing.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/bestseller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(AppRouting.kBookDetailsView),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),

        // shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) => BestSellerItem(),
      ),
    );
  }
}
