// import 'dart:convert';

// import 'package:football_app/testig/team%20data/standing_model.dart';
// import 'package:http/http.dart' as http;

// class teamApi {
//   Future<List<StandingsModel>> teamData() async {
//     var headers = {
//       'x-rapidapi-host': 'v3.football.api-sports.io',
//       'x-rapidapi-key': '773c3a5dec118ccea3d3c03d0ed6c89d'
//     };
//     var request = http.Request(
//         'GET',
//         Uri.parse(
//             'https://v3.football.api-sports.io/standings?season=2023&league=39'));

//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();
//     List<StandingsModel> matches = [];
//     if (response.statusCode == 200) {
//       var result = await response.stream.bytesToString();
//       var body = json.decode(result);
//       List<dynamic> matchesList = body['response'];

//       matches = matchesList
//           .map((dynamic item) => StandingsModel.fromJson(item))
//           .toList();
//     } else {
//       print(response.reasonPhrase);
//     }
//     return matches;
//   }
// }
