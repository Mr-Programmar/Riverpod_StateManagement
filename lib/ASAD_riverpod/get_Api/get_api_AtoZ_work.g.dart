// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_AtoZ_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Board _$BoardFromJson(Map<String, dynamic> json) => Board(
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: json['participants'] as int,
      price: json['price'] as num,
      link: json['link'] as String,
      key: json['key'] as String,
      accessibility: json['accessibility'] as num,
    );

Map<String, dynamic> _$BoardToJson(Board instance) => <String, dynamic>{
      'activity': instance.activity,
      'type': instance.type,
      'participants': instance.participants,
      'price': instance.price,
      'link': instance.link,
      'key': instance.key,
      'accessibility': instance.accessibility,
    };
