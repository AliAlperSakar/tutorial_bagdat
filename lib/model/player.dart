import 'package:tutorial_bagdat/model/team.dart';

class Player {
  int id;
  String first_name;
  int? height_feet;
  int? height_inches;
  String last_name;
  String position;
  Team team = {} as Team;
  int? weight_pounds;

  Player(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.team,
      required this.position});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      position: json['position'],
      team: json['team'],
    );
  }
}
