// class StandingsModel {
//   StandingsModel({
//     required this.standingsGet,
//     required this.response,
//   });

//   final String? standingsGet;
//   final List<Response> response;

//   factory StandingsModel.fromJson(Map<String, dynamic> json) {
//     return StandingsModel(
//       standingsGet: json["get"],
//       response: json["response"] == null
//           ? []
//           : List<Response>.from(
//               json["response"]!.map((x) => Response.fromJson(x))),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "get": standingsGet,
//         "response": response.map((x) => x?.toJson()).toList(),
//       };
// }

// class Response {
//   Response({
//     required this.league,
//   });

//   final League? league;

//   factory Response.fromJson(Map<String, dynamic> json) {
//     return Response(
//       league: json["league"] == null ? null : League.fromJson(json["league"]),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "league": league?.toJson(),
//       };
// }

// class League {
//   League({
//     required this.id,
//     required this.name,
//     required this.country,
//     required this.logo,
//     required this.flag,
//     required this.season,
//     required this.standings,
//   });

//   final int? id;
//   final String? name;
//   final String? country;
//   final String? logo;
//   final String? flag;
//   final int? season;
//   final List<List<Standing>> standings;

//   factory League.fromJson(Map<String, dynamic> json) {
//     return League(
//       id: json["id"],
//       name: json["name"],
//       country: json["country"],
//       logo: json["logo"],
//       flag: json["flag"],
//       season: json["season"],
//       standings: json["standings"] == null
//           ? []
//           : List<List<Standing>>.from(json["standings"]!.map((x) => x == null
//               ? []
//               : List<Standing>.from(x!.map((x) => Standing.fromJson(x))))),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "country": country,
//         "logo": logo,
//         "flag": flag,
//         "season": season,
//         "standings":
//             standings.map((x) => x.map((x) => x?.toJson()).toList()).toList(),
//       };
// }

// class Standing {
//   Standing({
//     required this.rank,
//     required this.team,
//     required this.points,
//     required this.goalsDiff,
//     required this.group,
//     required this.form,
//     required this.status,
//     required this.description,
//     required this.all,
//     required this.home,
//     required this.away,
//     required this.update,
//   });

//   final int? rank;
//   final Team? team;
//   final int? points;
//   final int? goalsDiff;
//   final String? group;
//   final String? form;
//   final String? status;
//   final String? description;
//   final All? all;
//   final All? home;
//   final All? away;
//   final DateTime? update;

//   factory Standing.fromJson(Map<String, dynamic> json) {
//     return Standing(
//       rank: json["rank"],
//       team: json["team"] == null ? null : Team.fromJson(json["team"]),
//       points: json["points"],
//       goalsDiff: json["goalsDiff"],
//       group: json["group"],
//       form: json["form"],
//       status: json["status"],
//       description: json["description"],
//       all: json["all"] == null ? null : All.fromJson(json["all"]),
//       home: json["home"] == null ? null : All.fromJson(json["home"]),
//       away: json["away"] == null ? null : All.fromJson(json["away"]),
//       update: DateTime.tryParse(json["update"] ?? ""),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "rank": rank,
//         "team": team?.toJson(),
//         "points": points,
//         "goalsDiff": goalsDiff,
//         "group": group,
//         "form": form,
//         "status": status,
//         "description": description,
//         "all": all?.toJson(),
//         "home": home?.toJson(),
//         "away": away?.toJson(),
//         "update": update?.toIso8601String(),
//       };
// }

// class All {
//   All({
//     required this.played,
//     required this.win,
//     required this.draw,
//     required this.lose,
//     required this.goals,
//   });

//   final int? played;
//   final int? win;
//   final int? draw;
//   final int? lose;
//   final Goals? goals;

//   factory All.fromJson(Map<String, dynamic> json) {
//     return All(
//       played: json["played"],
//       win: json["win"],
//       draw: json["draw"],
//       lose: json["lose"],
//       goals: json["goals"] == null ? null : Goals.fromJson(json["goals"]),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "played": played,
//         "win": win,
//         "draw": draw,
//         "lose": lose,
//         "goals": goals?.toJson(),
//       };
// }

// class Goals {
//   Goals({
//     required this.goalsFor,
//     required this.against,
//   });

//   final int? goalsFor;
//   final int? against;

//   factory Goals.fromJson(Map<String, dynamic> json) {
//     return Goals(
//       goalsFor: json["for"],
//       against: json["against"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "for": goalsFor,
//         "against": against,
//       };
// }

// class Team {
//   Team({
//     required this.id,
//     required this.name,
//     required this.logo,
//   });

//   final int? id;
//   final String? name;
//   final String? logo;

//   factory Team.fromJson(Map<String, dynamic> json) {
//     return Team(
//       id: json["id"],
//       name: json["name"],
//       logo: json["logo"],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "logo": logo,
//       };
// }
