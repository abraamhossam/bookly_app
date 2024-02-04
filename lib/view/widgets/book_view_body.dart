import 'package:bookly_app/utils/sizeconfig.dart';
import 'package:bookly_app/view/widgets/book_details_body.dart';
import 'package:bookly_app/view/widgets/book_view_appbar.dart';
import 'package:bookly_app/view/widgets/book_rating.dart';
import 'package:bookly_app/view/widgets/book_sale_button.dart';
import 'package:bookly_app/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookViewAppbar(),
        ),
        SizedBox(
          height: SizeConfig.height! * 0.02,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookDetailsBody(),
        ),
        SizedBox(
          height: SizeConfig.height! * 0.01,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookRating(
            mainAxis: MainAxisAlignment.center,
          ),
        ),
        SizedBox(
          height: SizeConfig.height! * 0.03,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: BookSaleButton(),
        ),
        SizedBox(
          height: SizeConfig.height! * 0.03,
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
          height: SizeConfig.height! * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: SizeConfig.height! * 0.15,
            child: FeaturedListView(
              width: SizeConfig.width! * 0.2,
            ),
          ),
        ),
      ],
    );
  }
}
