// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerData _$PlayerDataFromJson(Map<String, dynamic> json) {
  return PlayerData(
    id: json['id'] as int,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    position: json['position'] as String,
    height_feet: json['height_feet'] as int?,
    height_inches: json['height_inches'] as int?,
    weight_pounds: json['weight_pounds'] as int?,
    team: Team.fromJson(json['team'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlayerDataToJson(PlayerData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'position': instance.position,
      'height_feet': instance.height_feet,
      'height_inches': instance.height_inches,
      'weight_pounds': instance.weight_pounds,
      'team': instance.team,
    };
