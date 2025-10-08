import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/bestSeller_listView.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_news_books.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(height: 15),
              HomeNewsBooks(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Best Seller", style: Styles.titleStyle23),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        // SliverToBoxAdapter(child: BestsellerListview()),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BestsellerListview(),
          ),
        ),
      ],
    );
  }
}
