// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            width: 60.0,
            decoration: BoxDecoration(
              color: _selectedIndex == 0
                  ? const Color.fromRGBO(119, 116, 213, 1).withOpacity(0.1)
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/home.svg',
                width: 30.0,
                height: 30.0,
                color: _selectedIndex == 0
                    ? const Color.fromRGBO(119, 116, 213, 1)
                    : const Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 60.0,
            decoration: BoxDecoration(
              color: _selectedIndex == 1
                  ? const Color.fromRGBO(119, 116, 213, 1).withOpacity(0.1)
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/teacher.svg',
                width: 30.0,
                height: 30.0,
                color: _selectedIndex == 1
                    ? const Color.fromRGBO(119, 116, 213, 1)
                    : const Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
          ),
          label: 'Batches',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Container(
                width: 60.0,
                decoration: BoxDecoration(
                  color: _selectedIndex == 2
                      ? const Color.fromRGBO(119, 116, 213, 1).withOpacity(0.1)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/message.svg',
                    width: 30.0,
                    height: 30.0,
                    color: _selectedIndex == 2
                        ? const Color.fromRGBO(119, 116, 213, 1)
                        : const Color.fromRGBO(124, 124, 124, 1),
                  ),
                ),
              ),
              Positioned(
                right: 12,
                top: 3,
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(119, 116, 213, 1),
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 60.0,
            decoration: BoxDecoration(
              color: _selectedIndex == 3
                  ? const Color.fromRGBO(119, 116, 213, 1).withOpacity(0.1)
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/profile-circle.svg',
                width: 30.0,
                height: 30.0,
                color: _selectedIndex == 3
                    ? const Color.fromRGBO(119, 116, 213, 1)
                    : const Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      selectedItemColor: const Color.fromRGBO(119, 116, 213, 1),
      unselectedItemColor: const Color.fromRGBO(124, 124, 124, 1),
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
