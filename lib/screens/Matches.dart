import 'package:flutter/material.dart';
import 'package:football_app/components/appBar.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('Fixtures'),
        // bottomNavigationBar: MyBottomNav(),
        body: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              SizedBox(
                height: 0.01 * MediaQuery.of(context).size.height,
              ),
            ],
          ),
        ));
  }
}
