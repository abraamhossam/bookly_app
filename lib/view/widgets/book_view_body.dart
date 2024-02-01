import 'package:bookly_app/view/widgets/appbar_book_view_body.dart';

import 'package:bookly_app/view/widgets/book_iteam_body.dart';
import 'package:bookly_app/view/widgets/book_rate.dart';
import 'package:bookly_app/view/widgets/book_sale_button.dart';
import 'package:bookly_app/view/widgets/books_list_view.dart';

import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: AppbarBookViewBody(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookIteamBody(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookRate(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookSaleButton(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: BooksListView(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
        ),
      ],
    );
  }
}
