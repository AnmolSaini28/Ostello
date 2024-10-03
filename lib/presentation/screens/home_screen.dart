// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ostello/presentation/widgets/all_course_widget.dart';
import 'package:ostello/presentation/widgets/course_card.dart';
import 'package:ostello/presentation/widgets/course_widget.dart';
import 'package:ostello/presentation/widgets/custom_banner.dart';
import 'package:ostello/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:ostello/presentation/widgets/grid_item.dart';
import 'package:ostello/presentation/widgets/header_widget.dart';
import 'package:ostello/presentation/widgets/toggle.dart';
import 'package:ostello/presentation/widgets/toppers_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/Img.png'),
                          radius: 22.33,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Hi, ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Krishna',
                                    style: TextStyle(
                                      color: Color.fromRGBO(119, 116, 213, 1),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Better yourself each day everyday",
                              style: TextStyle(
                                color: Color.fromRGBO(72, 72, 72, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: SvgPicture.asset(
                                "assets/images/notification.svg",
                                height: 24,
                                width: 24,
                                color: const Color.fromRGBO(41, 45, 50, 1),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: -6,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(235, 87, 87, 1),
                                  shape: BoxShape.circle,
                                ),
                                constraints: const BoxConstraints(
                                  minWidth: 12,
                                  minHeight: 12,
                                ),
                                child: const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: OnlineOfflineToggle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CourseCard(
                            text: "Live Section on JEE Exams",
                            color: Color.fromRGBO(
                              247,
                              226,
                              165,
                              1,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          CourseCard(
                            text: "Live Section on NEET Exams",
                            color: Color.fromRGBO(
                              254,
                              209,
                              186,
                              1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridItem(
                            imagePath: 'assets/images/11.png',
                            text: "Free Couses",
                          ),
                          GridItem(
                            imagePath: "assets/images/21.png",
                            text: "Attendance",
                          ),
                          GridItem(
                            imagePath: "assets/images/31.png",
                            text: "Store",
                          ),
                          GridItem(
                            imagePath: "assets/images/41.png",
                            text: "Assessment",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Toppers of ABC",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(12, 12, 12, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ToppersList(),
                          SizedBox(
                            width: 12,
                          ),
                          ToppersList(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Header(heading: "Popular Courses"),
                    const SizedBox(
                      height: 6,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CourseWidget(),
                          SizedBox(
                            width: 12,
                          ),
                          CourseWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Header(heading: "All Courses"),
                    const SizedBox(
                      height: 6,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AllCourseWidget(),
                          SizedBox(
                            width: 12,
                          ),
                          AllCourseWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomBanner(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
