// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    total_pages: json['total_pages'] as int,
    current_page: json['current_page'] as int,
    next_page: json['next_page'] as int,
    per_page: json['per_page'] as int,
    total_count: json['total_count'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total_pages': instance.total_pages,
      'current_page': instance.current_page,
      'next_page': instance.next_page,
      'per_page': instance.per_page,
      'total_count': instance.total_count,
    };
