// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
    data: (json['data'] as List<dynamic>)
        .map((e) => PlayerData.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
