import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: Color.fromARGB(255, 32, 34, 56),
    elevation: 0,
    title: Text('${title}',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500)),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        iconSize: 30,
        color: Colors.grey,
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.settings),
        iconSize: 30,
        color: Colors.grey,
      ),
    ],
  );
}
