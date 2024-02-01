import 'package:bookly_app/constants.dart';
import 'package:bookly_app/model/assets.dart';
import 'package:bookly_app/view/book_view.dart';
import 'package:bookly_app/view/widgets/book_rate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerBookIteam extends StatelessWidget {
  const BestSellerBookIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(BookView.id);
        },
        child: Row(
          children: [
            Image.asset(
              Assets.testImage,
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      "Harry Potter and the Goblet of Fire ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
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
                  Row(
                    children: [
                      const Text(
                        "19.99€",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      const BookRate(),
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
