// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_AtoZ_example2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

University _$UniversityFromJson(Map<String, dynamic> json) => University(
      domains:
          (json['domains'] as List<dynamic>).map((e) => e as String).toList(),
      stateProvince: json['state-province'],
      country: json['country'] as String,
      alphaTwoCode: json['alpha_two_code'] as String,
      webPages:
          (json['web_pages'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UniversityToJson(University instance) =>
    <String, dynamic>{
      'domains': instance.domains,
      'state-province': instance.stateProvince,
      'country': instance.country,
      'alpha_two_code': instance.alphaTwoCode,
      'web_pages': instance.webPages,
      'name': instance.name,
    };
