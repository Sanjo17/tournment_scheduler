import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  int currentIndex = 0;
  final String text1;
  final String text2;
  final String text3;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  BottomNav({
    super.key,
    required this.currentIndex,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.home), label: text1),
        BottomNavigationBarItem(icon: const Icon(Icons.place), label: text2),
        BottomNavigationBarItem(icon: const Icon(Icons.person), label: text3),
      ],
    );
  }
}
