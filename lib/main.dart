import 'package:flutter/material.dart';
import 'package:football_app/components/Bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 19, 35),
      ),
      title: 'Flutter Demo',
      home: MyBottomNav(),
    );
  }
}
