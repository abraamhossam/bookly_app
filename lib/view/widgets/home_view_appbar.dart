import 'package:bookly_app/utils/assets.dart';
import 'package:bookly_app/utils/sizeconfig.dart';
import 'package:bookly_app/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewAppbar extends StatelessWidget {
  const HomeViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: SizeConfig.height! * 0.026,
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
