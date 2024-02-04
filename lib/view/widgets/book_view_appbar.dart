import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BookViewAppbar extends StatelessWidget {
  const BookViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            FontAwesomeIcons.xmark,
            size: 30,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}
