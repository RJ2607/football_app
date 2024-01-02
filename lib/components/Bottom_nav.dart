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
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "News",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Transform.rotate(
                  angle: -30 * pi / 180, child: Icon(Icons.sports)),
              label: "Matches",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_outlined),
              label: "Standings",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
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
