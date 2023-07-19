// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart' as http;
//
//
//
// class Datamodal{
//   late String id;
//   late String title;
//
//   Datamodal({required this.id, required this.title});
//
//   factory Datamodal.fromjson( Map<String, dynamic> json   ){
//
//     return Datamodal(id: json["id"] , title: json["title"]);
//
//
//
//   }
//
//
//
//
//
// }
//
//
// class ApiServices{
//
//   Future <List<Datamodal>> Getapi()async{
//
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
//    var alldata= json.decode(response.body);
//    print(alldata);
//
//
//
//
//
//
//
//   }
//
// }
//
// class UiApi extends ConsumerWidget {
//
//    UiApi({
//     Key? key,
//   }) : super(key: key);
//
//
//    ApiServices a=ApiServices();
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//
//     return SafeArea(child: Scaffold(body: ElevatedButton(onPressed: (){
//
//       a.Getapi();
//       print("button hit");
//
//
//
//     }, child: Text("call api")))) ;
//   }
// }