import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? text;
  Color? color;
  VoidCallback? onTap;
  Category({super.key, this.text, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: color,
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
