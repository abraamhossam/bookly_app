import 'package:bookly_app/utils/sizeconfig.dart';
import 'package:bookly_app/view/widgets/home_view_appbar.dart';

import 'package:bookly_app/view/widgets/best_seller_book_iteam.dart';
import 'package:bookly_app/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.height! * 0.01,
          ),
        ),
        const SliverToBoxAdapter(
          child: HomeViewAppbar(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.height! * 0.02,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.height! * 0.35,
            child: FeaturedListView(
              width: SizeConfig.width! * 0.4,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.height! * 0.03,
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
            height: SizeConfig.height! * 0.02,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => const BestSellerBookListViewIteam(),
          ),
        ),
      ],
    );
  }
}
