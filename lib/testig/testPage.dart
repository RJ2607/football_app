import 'package:flutter/material.dart';

import 'team data/standing_model.dart';
import 'team data/team_data.dart';

class testPage extends StatefulWidget {
  const testPage({super.key});

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  List<StandingsModel> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('testPage'),
      ),
      body: FutureBuilder(
        future: teamApi().teamData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      snapshot.data![index].response.first.league?.name ?? ''),
                );
              },
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          }
        },
      ),
    );
  }

  // setData() async {
  //   setState(() {
  //     data = teamData();
  //   });
  //   print(data);
  // }

  // Future<void> teamData() async {
  //   var headers = {
  //     'x-rapidapi-host': 'v3.football.api-sports.io',
  //     'x-rapidapi-key': '773c3a5dec118ccea3d3c03d0ed6c89d'
  //   };
  //   var request = http.Request(
  //       'GET',
  //       Uri.parse(
  //           'https://v3.football.api-sports.io/standings?season=2023&league=39'));

  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     var body = await response.stream.bytesToString();
  //     var teamList = StandingsModel.fromJson(json.decode(body));

  //     setState(() {
  //       data.add(teamList);
  //     });
  //     print(teamList);
  //   } else {
  //     Center(
  //         child: CircularProgressIndicator(
  //       color: Colors.red,
  //     ));
  //   }
  // }
}
