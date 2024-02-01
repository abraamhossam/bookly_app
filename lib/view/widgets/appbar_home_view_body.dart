import 'package:bookly_app/model/assets.dart';

import 'package:bookly_app/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarHomeViewBody extends StatelessWidget {
  const AppbarHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Get.toNamed(SearchView.id);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
