import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ostello/presentation/widgets/custom_button.dart';

class AllCourseWidget extends StatelessWidget {
  const AllCourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(8.68),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(17.36),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(119, 119, 119, 0.15),
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: SizedBox(
        width: 295.19,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 278.7,
              child: Row(
                children: [
                  Text(
                    "Mr. Sampath",
                    style: TextStyle(
                      fontSize: 10.42,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF4C4452),
                    ),
                  ),
                  SizedBox(
                    width: 21.71,
                    height: 15.63,
                    child: Image(
                      image: AssetImage("assets/images/image153.png"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 146,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.95),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.95),
                    child: Image.asset(
                      "assets/images/image.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.95),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black54,
                              Colors.transparent,
                            ],
                            stops: [0.0, 0.6],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.7),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "Hinglish",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.42,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 20,
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEB5757),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          "LIVE",
                          style: TextStyle(
                            color: Color(0xFFEB5757),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "ARAMBH - NEET DROPPER BATCH",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/1.svg"),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Full Syllabus",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(111, 102, 117, 1),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/2.svg"),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "For NEET 2025-2026 Aspirant",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(111, 102, 117, 1),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/3.svg"),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Live + Recorded",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(111, 102, 117, 1),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/4.svg"),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Batch Starts on 16 Aug",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(111, 102, 117, 1),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Baseline(
                        baseline: 18,
                        baselineType: TextBaseline.alphabetic,
                        child: Text.rich(
                          TextSpan(
                            text: '\u20B9 ',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: Color.fromRGBO(39, 42, 52, 1),
                            ),
                            children: [
                              TextSpan(
                                text: '5000',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Color.fromRGBO(39, 42, 52, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Baseline(
                        baseline: 12,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          '10000',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(82, 82, 81, 1),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Baseline(
                        baseline: 15,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          "50% OFF",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color.fromRGBO(235, 87, 87, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const CustomButton(
                    width: double.infinity,
                    text: "Join",
                    color: Color.fromRGBO(119, 116, 213, 1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
