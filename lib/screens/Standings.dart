import 'package:flutter/material.dart';
import 'package:football_app/components/appBar.dart';

class Standings extends StatefulWidget {
  const Standings({super.key});

  @override
  State<Standings> createState() => _StandingsState();
}

class _StandingsState extends State<Standings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('Standings'),
        // bottomNavigationBar: MyBottomNav(),
        body: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              SizedBox(
                height: 0.05 * MediaQuery.of(context).size.height,
              ),
            ],
          ),
        ));
  }
}
