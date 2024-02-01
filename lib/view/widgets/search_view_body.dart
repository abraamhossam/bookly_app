import 'package:bookly_app/view/widgets/best_seller_books_list_view.dart';
import 'package:bookly_app/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomTextField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Search Result",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const BestSellerBooksListView(),
        ],
      ),
    );
  }
}
