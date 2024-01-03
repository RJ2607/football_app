import 'package:flutter/material.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: MyBottomNav(),
        body: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          SizedBox(
            height: 0.05 * MediaQuery.of(context).size.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Matches",
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
                    icon: Icon(Icons.notifications),
                    iconSize: 30,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}