// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ostello/presentation/widgets/custom_button.dart';

class CourseCard extends StatelessWidget {
  final Color color;
  final String text;
  const CourseCard({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 206,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(39, 42, 52, 1),
                      ),
                    ),
                    const Text(
                      "Live Sections on JEE Exams",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(39, 42, 52, 1),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const CustomButton(
                      width: 72,
                      text: "Join",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            right: 4,
            child: Image.asset(
              'assets/images/course.png',
              width: 90,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
