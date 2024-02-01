import 'package:bookly_app/view/widgets/appbar_home_view_body.dart';

import 'package:bookly_app/view/widgets/best_seller_book_iteam.dart';
import 'package:bookly_app/view/widgets/books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: AppbarHomeViewBody(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: BooksListView(
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Best Seller",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => const BestSellerBookIteam(),
          ),
        ),
      ],
    );
  }
}
