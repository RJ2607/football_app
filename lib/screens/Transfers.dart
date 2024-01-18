import 'package:flutter/material.dart';
import 'package:football_app/components/appBar.dart';

class Transfers extends StatefulWidget {
  const Transfers({super.key});

  @override
  State<Transfers> createState() => _TransfersState();
}

class _TransfersState extends State<Transfers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('Transfers'),
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
