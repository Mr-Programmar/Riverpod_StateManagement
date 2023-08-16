import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/founDation.Dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_example_3.g.dart';

final getApiProvider1 = FutureProvider<List<PublicAPI>>((ref) async {
  return ref.watch(publicClassProvider).getApi();
});


final  publicClassProvider = Provider<PublicAPIRepostry>((ref) {
  return   PublicAPIRepostry() ;
});


final countProvider = StateProvider<int?>((ref) {
  return PublicAPIRepostry.save;
});


@JsonSerializable(fieldRename: FieldRename.pascal)
class PublicAPI {
  @JsonKey(name: "API")
  final String api;
  final String description;
  final String auth;
  @JsonKey(name:"HTTPS")
  final bool https;
  final String cors;
  final String link;
  final String category;

  PublicAPI({
    required this.api,
    required this.description,
    required this.auth,
    required this.https,
    required this.cors,
    required this.link,
    required this.category,

});



  factory PublicAPI.fromJson(Map<String, dynamic> json) =>
      _$PublicAPIFromJson(json);

  /// Connect the generated [_$PublicAPIToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PublicAPIToJson(this);







  }


  class PublicAPIRepostry{
  static int? save;

    Future<List<PublicAPI>>getApi() async {
      String url="https://api.publicapis.org/entries";

      final response = await Dio().get<Map<String,dynamic>>(url);
      print("hiiiii");
      final data = response.data!;
      print(data['count']);
      save=data['count'] as int ;

      var data2 = (data['entries'] as List)!.cast<Map<String, dynamic>>();
      print(data2);

      var Final_data_Public = data2.map((e) {
        return PublicAPI.fromJson(e);
      }).toList();
      return Final_data_Public;
    }



  }




























class PublicApiUi extends ConsumerWidget {
  const PublicApiUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(child: Scaffold(

      body: ref.watch(getApiProvider1).when(data: (data){return Column(
        children: [
          Text(data[0].api.toString()),

          Text("api coming count ${ref.watch(countProvider)}"),

        ],
      );}, error: (error,StackTrace){return Text("$error");}, loading:(){

        CircularProgressIndicator();

      }),




    )) ;
  }
}
