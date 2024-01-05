// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:football_app/screens/Matches.dart';
import 'package:football_app/screens/News.dart';

// import '../components/Bottom_nav.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

int val = 0;

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.05 * MediaQuery.of(context).size.height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500)),
                  Row(
                    children: [
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
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Container(
                  height: 200,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 20, right: 20, bottom: 15),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 28,
                          width: 105,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "⚽ Top News",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "ldsvvcjshvchjshcshjcjhsvhjhdvjhsvjchvsjvcdshjsvcjhsdcjscjsc",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color.fromARGB(255, 118, 102, 237),
                            Color.fromARGB(255, 13, 0, 188)
                          ]),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Teams",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              popularTeams(),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Matches",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Matches()));
                    },
                    child: Text(
                      "VIEW ALL",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              upcomingMatches(),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => News()));
                    },
                    child: Text(
                      "VIEW ALL",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView popularTeams() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                color: Color.fromARGB(119, 83, 78, 78),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Image.network(
              'https://media.api-sports.io/football/teams/541.png',
              height: 60,
            )),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView upcomingMatches() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 195,
            width: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 10, right: 10),
                    child: Text(
                      "Old Trafford",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color.fromARGB(255, 17, 2, 230)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://media.api-sports.io/football/teams/541.png',
                      height: 62,
                    ),
                    Image.network(
                      'https://media.api-sports.io/football/teams/541.png',
                      height: 62,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Real Madrid",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "VS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "FC Barcelona",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(255, 103, 84, 245),
                      Color.fromARGB(255, 17, 2, 230)
                    ]),
                borderRadius: BorderRadius.circular(15)),
          ),
        ],
      ),
    );
  }
}
