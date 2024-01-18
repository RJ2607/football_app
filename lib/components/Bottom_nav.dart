// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
    Matches(),
    News(),
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
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.home_filled,
            color: Color.fromARGB(255, 69, 214, 25),
          ),
          Transform.rotate(
              angle: -30 * pi / 180,
              child: Icon(
                Icons.sports,
                color: Color.fromARGB(255, 69, 214, 25),
              )),
          Icon(
            Icons.newspaper,
            color: Color.fromARGB(255, 69, 214, 25),
          ),
          Icon(
            Icons.table_chart_outlined,
            color: Color.fromARGB(255, 69, 214, 25),
          ),
        ],
        animationDuration: Duration(milliseconds: 540),
        height: 50,
        color: Colors.black,
        backgroundColor: Colors.transparent,
        onTap: _onItemTapped,
      ),
    );
  }
}
