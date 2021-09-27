import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  int total_pages;
  int current_page;
  int next_page;
  int per_page;
  int total_count;

  Meta(
      {required this.total_pages,
      required this.current_page,
      required this.next_page,
      required this.per_page,
      required this.total_count});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
