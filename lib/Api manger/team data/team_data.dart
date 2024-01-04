import 'package:football_app/Api%20manger/team%20data/team_model.dart';
import 'package:http/http.dart' as http;


class TeamsAPI {
  final String apiURL = 'https://v3.football.api-sports.io/teams';

  static const api_Key = '54b11622a5457e57b406a7f6b03955d3';

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_Key
  };

  // Future<List<TeamModel>> getAllTeams() async {
  //   final response = await http.get(Uri.parse(apiURL), headers: headers);

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> teamsData = json.decode(response.body);
  //     final List<dynamic> teamsList = teamsData['response'];

  //     return teamsList.map((json) => TeamModel.fromJson(json)).toList();
  //   } else {
  //     throw Exception('Failed to load data!');
  //   }
  // }
}
