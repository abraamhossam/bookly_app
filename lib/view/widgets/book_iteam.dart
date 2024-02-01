import 'package:bookly_app/model/assets.dart';
import 'package:flutter/material.dart';

class BookIteam extends StatelessWidget {
  const BookIteam({
    super.key,
    required this.widthImage,
  });
  final double widthImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthImage,
      child: AspectRatio(
        aspectRatio: 2 / 4,
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
