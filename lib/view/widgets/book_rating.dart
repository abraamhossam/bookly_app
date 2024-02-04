import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxis});
  final MainAxisAlignment? mainAxis;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxis ?? MainAxisAlignment.start,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "4.8",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "(2390)",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
