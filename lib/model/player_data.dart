import 'package:json_annotation/json_annotation.dart';
import 'package:tutorial_bagdat/model/team.dart';

import 'team.dart';

part 'player_data.g.dart';

@JsonSerializable()
class PlayerData {
  int id;
  String first_name;
  String last_name;
  String position;
  int? height_feet;
  int? height_inches;
  int? weight_pounds;
  Team team;

  PlayerData(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.position,
      this.height_feet,
      this.height_inches,
      this.weight_pounds,
      required this.team});

  factory PlayerData.fromJson(Map<String, dynamic> json) =>
      _$PlayerDataFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerDataToJson(this);
}
