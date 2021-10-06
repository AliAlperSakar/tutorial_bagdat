import 'package:json_annotation/json_annotation.dart';

import 'player_data.dart';
import 'meta.dart';
part 'player.g.dart';

@JsonSerializable()
class Player {
  List<PlayerData> data;
  Meta meta;

  Player({
    required this.data,
    required this.meta,
  });

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
