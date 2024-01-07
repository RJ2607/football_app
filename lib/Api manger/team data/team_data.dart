import 'dart:convert';

import 'package:football_app/Api%20manger/team%20data/team_model.dart';
import 'package:http/http.dart' as http;

class TeamsAPI {
  final String apiURL = 'https://v3.football.api-sports.io/teams';

  static const api_Key = '54b11622a5457e57b406a7f6b03955d3';

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_Key
  };

  void getAllTeams() async {
    final response = await http.get(Uri.parse(apiURL), headers: headers);

    if (response.statusCode == 200) {
      final teamsData = jsonDecode(response.body);
      final List<dynamic> result = teamsData['response'];

      final teamList = result.map((e) {
        return TeamModel(
          // id: e['team']['id'],
          code: e['code'],
          name: e['name'],
          logo: e['logo'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
