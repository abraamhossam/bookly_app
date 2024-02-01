import 'package:bookly_app/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookSaleButton extends StatelessWidget {
  const BookSaleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            ontap: () {},
            color: Colors.white,
            fontColor: Colors.black,
            text: "19.99€",
            border: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            ontap: () {},
            color: Colors.orangeAccent,
            fontColor: Colors.white,
            text: "Free Preview",
            border: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
