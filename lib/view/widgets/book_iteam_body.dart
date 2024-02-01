import 'package:bookly_app/view/widgets/book_iteam.dart';

import 'package:flutter/material.dart';

class BookIteamBody extends StatelessWidget {
  const BookIteamBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: BookIteam(
            widthImage: MediaQuery.of(context).size.width * 0.48,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Text(
          "The Jungle Book",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "Rudyard Kipling",
          style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
