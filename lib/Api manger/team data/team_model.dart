class TeamModel {
  final int id;
  final String abbreviation;
  final String city;

  TeamModel({
    required this.id,
    required this.abbreviation,
    required this.city,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: json['id'],
      abbreviation: json['abbreviation'],
      city: json['city'],
    );
  }
}
