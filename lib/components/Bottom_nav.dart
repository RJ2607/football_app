import 'dart:math';

import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

int val = 0;

class _MyBottomNavState extends State<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: val,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(
              icon: Transform.rotate(
                  angle: -30 * pi / 180, child: Icon(Icons.sports)),
              label: "Matches"),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_outlined), label: "Standings"),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            val = index;
          });
        },
      ),
    );
  }
}
