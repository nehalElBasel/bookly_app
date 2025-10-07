import 'package:bookly_app/core/utilits/assets.dart';
import 'package:bookly_app/core/utilits/constants.dart';
import 'package:bookly_app/core/utilits/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.bookImage)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 3, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Text(
                      "Harry Poter and the global of fire Harry Poter and the global of fire",
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("J.K. Rowling", style: Styles.textStyle14),
                  SizedBox(height: 3),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "19.99E",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Rating(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
