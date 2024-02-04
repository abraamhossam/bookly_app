import 'package:bookly_app/view/widgets/featured_list_view_iteam.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemCount: 6,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FeaturedListViewIteam(
              widthImage: width + 15,
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FeaturedListViewIteam(
              widthImage: width,
            ),
          );
        }
      },
    );
  }
}
