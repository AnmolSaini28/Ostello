// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class OnlineOfflineToggle extends StatefulWidget {
  const OnlineOfflineToggle({super.key});

  @override
  _OnlineOfflineToggleState createState() => _OnlineOfflineToggleState();
}

class _OnlineOfflineToggleState extends State<OnlineOfflineToggle> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Online Button
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isOnline = true;
              });
            },
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: isOnline
                      ? const Color.fromRGBO(46, 49, 57, 1)
                      : const Color.fromRGBO(248, 248, 248, 1),
                  borderRadius: BorderRadius.circular(28)),
              child: Text(
                'Online',
                style: TextStyle(
                  color: isOnline
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : const Color.fromRGBO(199, 199, 199, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        // Offline Button
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isOnline = false;
              });
            },
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: !isOnline
                      ? const Color.fromRGBO(46, 49, 57, 1)
                      : const Color.fromRGBO(248, 248, 248, 1),
                  borderRadius: BorderRadius.circular(28)),
              child: Text(
                'Offline',
                style: TextStyle(
                  color: !isOnline
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : const Color.fromRGBO(199, 199, 199, 1),
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
