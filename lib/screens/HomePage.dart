import 'package:flutter/material.dart';
import 'package:football_app/components/Bottom_nav.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

int val = 0;

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: MyBottomNav());
  }
}
