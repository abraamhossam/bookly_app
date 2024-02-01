import 'package:bookly_app/model/assets.dart';

import 'package:bookly_app/view/home_view.dart';

import 'package:bookly_app/view/widgets/animation_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  void initSlidingAnimation() {
    animatationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animatationController);
    animatationController.forward();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(HomeView.id);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animatationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(
          height: 4,
        ),
        Align(
          alignment: Alignment.center,
          child: AnimationText(slidingAnimation: slidingAnimation),
        ),
      ],
    );
  }
}
