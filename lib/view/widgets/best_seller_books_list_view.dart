import 'package:bookly_app/view/widgets/best_seller_book_iteam.dart';

import 'package:flutter/material.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const BestSellerBookListViewIteam();
          }),
    );
  }
}
