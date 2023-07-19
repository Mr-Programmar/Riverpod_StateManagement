import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';

part 'get_api_AtoZ_work.g.dart';

@JsonSerializable()
class Board {
  String activity;
  String type;
  int participants;
  num price;
  String link;
  String key;
  num accessibility;

  Board({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);

  /// Connect the generated [_$BoardToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BoardToJson(this);
}

class BoardRepostry {
  static Future<Board>getApi() async {
    String url = "https://www.boredapi.com/api/activity";

    final response = await Dio().get<Map<String,dynamic>>(url);
    final apidatagot = response.data;
    print(apidatagot);

    final namecons=Board.fromJson( apidatagot! );




    return namecons;
  }
}

class GetApiUi extends ConsumerStatefulWidget {
  const GetApiUi({super.key});

  @override
  ConsumerState createState() => _GetApiUiState();
}

class _GetApiUiState extends ConsumerState<GetApiUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ref.watch(getapiprovider).when(
            data: (data) {

              return Column(children:[

                ElevatedButton(onPressed: (){ref.invalidate(getapiprovider);}, child: Text("button")),
                Center(child: Text(data.activity.toString()))]);
            },
            error: (object, StackTrace) {
            return  Text("error_________________$object");

            },
            loading: () {
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}

final getapiprovider = FutureProvider((ref) => BoardRepostry.getApi());
