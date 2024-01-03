import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
              Text("News",
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