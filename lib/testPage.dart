import 'package:flutter/material.dart';
import 'package:football_app/Api%20manger/team%20data/team_model.dart';
import 'package:http/http.dart' as http;

class testPage extends StatefulWidget {
  const testPage({super.key});

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  List<TeamModel> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('testPage'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: teamData,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final name = data[index].name;
              final logo = data[index].logo;
              return ListTile(
                title: Text(name),
                leading: Image.network(logo),
              );
            }));
  }

  void teamData() async {
    var headers = {
      'x-rapidapi-host': 'v3.football.api-sports.io',
      'x-rapidapi-key': '773c3a5dec118ccea3d3c03d0ed6c89d'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://v3.football.api-sports.io/standings?season=2023&league=39'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
    print(response);
    // final teamsData = jsonDecode(response.body);
    // final List<dynamic> result = teamsData['response'];

    // final teamList = result.map((e) {
    //   return TeamModel(
    //     // id: e['team']['id'],
    //     code: e['code'],
    //     name: e['name'],
    //     logo: e['logo'],
    //   );
    // }).toList();
    setState(() {
      // data = teamList;
    });
    print(data);
  }
}
