// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:football_app/screens/HomePage.dart';
import 'package:football_app/screens/Matches.dart';
import 'package:football_app/screens/News.dart';
import 'package:football_app/screens/Standings.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int val = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyHome(),
    News(),
    Matches(),
    Standings()
  ];
  void _onItemTapped(int index) {
    setState(() {
      val = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(val),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: val,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Transform.rotate(
                  angle: -30 * pi / 180, child: Icon(Icons.sports)),
              label: "Matches",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "News",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_outlined),
              label: "Standings",
              backgroundColor: Color.fromARGB(255, 22, 22, 22)),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
