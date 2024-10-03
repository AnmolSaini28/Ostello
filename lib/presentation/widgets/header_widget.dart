import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.heading});
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Text(
            "View All",
            style: TextStyle(
              color: Color(0xFFEB5757),
              fontWeight: FontWeight.w700,
              fontSize: 12,
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFFEB5757),
            ),
          ),
        ),
      ],
    );
  }
}
