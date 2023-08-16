// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_api_example_3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicAPI _$PublicAPIFromJson(Map<String, dynamic> json) => PublicAPI(
      api: json['API'] as String,
      description: json['Description'] as String,
      auth: json['Auth'] as String,
      https: json['HTTPS'] as bool,
      cors: json['Cors'] as String,
      link: json['Link'] as String,
      category: json['Category'] as String,
    );

Map<String, dynamic> _$PublicAPIToJson(PublicAPI instance) => <String, dynamic>{
      'API': instance.api,
      'Description': instance.description,
      'Auth': instance.auth,
      'HTTPS': instance.https,
      'Cors': instance.cors,
      'Link': instance.link,
      'Category': instance.category,
    };
