import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_api_AtoZ.g.dart';


final PostApiRepostryProvider = Provider<PostApiRepostry>((ref) {
  return PostApiRepostry();
});


class PostApiRepostry {

  Future<void> postapi({
    required String phone,
    required String email,
    required String name,
    required String deviceId,
    required bool driver,
  }) async {
    String url = "http://192.168.1.3:8000/api/users/add_user";
    final response = await Dio().post(
      url,
      data: {
        "phone_number": "$phone",
        "email": "$email",
        "name": "$name",
        "device_id": "$deviceId",
        "driver": true,
      },
      options: Options(contentType: 'application/json'),
    );

    print(response);
  }
}


//--------------------------------------------------------------------------------------------------


@riverpod
class PostApiController extends _$PostApiController {
  @override
  FutureOr<void> build() async {
    return;
  }


  Future<void> controllerPostApi({
    required String phone,
    required String email,
    required String name,
    required String deviceId,
    required bool driver,})



  async {
state = AsyncLoading();

    await ref.read(PostApiRepostryProvider).postapi(phone: phone,
        email: email,
        name: name,
        deviceId: deviceId,
        driver: driver);

    state = AsyncData(1);
  }


}
//
// final controlrProvider = StateNotifierProvider<PostApiController>((ref) {
//
//   return PostApiController();
// });


class PostApiScreen extends HookConsumerWidget {
  PostApiScreen({super.key});


  var isDone = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
print("object");

    final phonecontrollerTour = useTextEditingController();
    final emailcontrollerTour = useTextEditingController();
    final isdrivercontrollerTour = useTextEditingController();
    final deviceidcontrollerTour = useTextEditingController();
    final namecontrollerTour = useTextEditingController();
print( ref.watch(postApiControllerProvider).hasValue);
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
            TextFormField(
                controller: phonecontrollerTour,
                decoration: InputDecoration(hintText: "phone")),
            TextFormField(
                controller: namecontrollerTour,
                decoration: InputDecoration(hintText: "name")),
            TextFormField(
                controller: deviceidcontrollerTour,
                decoration: InputDecoration(hintText: "devic id")),
            TextFormField(
                controller: isdrivercontrollerTour,
                readOnly: true,
                decoration: InputDecoration(hintText: "true")),
            TextFormField(
                controller: emailcontrollerTour,
                decoration: InputDecoration(hintText: "email")),
            ElevatedButton(



              onPressed:
              ref.read(postApiControllerProvider).isLoading==true|| isDone==true? null:

                  () {
                ref.read(postApiControllerProvider.notifier).controllerPostApi(
                  name: namecontrollerTour.text,
                  phone: phonecontrollerTour.text,
                  deviceId: deviceidcontrollerTour.text,
                  driver: true,
                  email: emailcontrollerTour.text,
                );
    isDone = true;
                emailcontrollerTour.clear();
              },
              child: ref.watch(postApiControllerProvider).isLoading? CircularProgressIndicator(): Text("Button"),
            ),
          ])),
    );
  }
}










