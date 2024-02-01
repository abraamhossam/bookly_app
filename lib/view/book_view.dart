import 'package:bookly_app/view/widgets/book_view_body.dart';
import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});
  static String id = "/bookview";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookViewBody(),
      ),
    );
  }
}
