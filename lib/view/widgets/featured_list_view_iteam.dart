import 'package:bookly_app/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewIteam extends StatelessWidget {
  const FeaturedListViewIteam({
    super.key,
    required this.widthImage,
  });
  final double widthImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthImage,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
