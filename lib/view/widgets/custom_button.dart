import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.border,
    required this.text,
    required this.ontap,
    required this.color,
    required this.fontColor,
  });
  final OutlinedBorder? border;
  final String text;
  final VoidCallback ontap;
  final Color color;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: border,
        ),
        onPressed: ontap,
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
