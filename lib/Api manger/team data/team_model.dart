class TeamModel {
  final int id;
  final String code;
  final String name;
  final String logo;

  TeamModel({
    required this.id,
    required this.code,
    required this.name,
    required this.logo
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: json['id'],
      code: json['code'],
      name: json['name'],
      logo: json['logo']
    );
  }
}
