import 'package:bookly_app/constants.dart';
import 'package:bookly_app/utils/sizeconfig.dart';
import 'package:bookly_app/view/book_view.dart';
import 'package:bookly_app/view/widgets/book_rating.dart';
import 'package:bookly_app/view/widgets/featured_list_view_iteam.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerBookListViewIteam extends StatelessWidget {
  const BestSellerBookListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(BookView.id);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeaturedListViewIteam(
              widthImage: SizeConfig.width! * 0.22,
            ),
            SizedBox(
              width: SizeConfig.width! * 0.06,
            ),
            SizedBox(
              width: SizeConfig.width! * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      "Harry Potter and the Goblet of Fire ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ),
                  const Text(
                    "JK Rowting",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99€",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
