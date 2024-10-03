// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imagePath;
  final String text;
  const GridItem({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromRGBO(255, 249, 230, 1),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.02),
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 60,
            width: 60,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(85, 85, 85, 1),
            ),
          ),
        ],
      ),
    );
  }
}
