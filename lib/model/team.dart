import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';


@JsonSerializable()
class Team {
  Team(
      {required this.id,
      required this.abbreviation,
      required this.city,
      required this.conference,
      required this.division,
      required this.full_name,
      required this.name});

  int id;
  String abbreviation;
  String city;
  String conference;
  String division;
  @JsonKey(name: 'full_name')
  String full_name;
  @JsonKey(name: 'name')
  String name;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
