import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    String url = "http://192.168.1.9:8000/api/users/add_user";
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












class PostApiScreen extends HookConsumerWidget {
  const PostApiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phonecontrollerTour = useTextEditingController();
    final emailcontrollerTour = useTextEditingController();
    final isdrivercontrollerTour = useTextEditingController();
    final deviceidcontrollerTour = useTextEditingController();
    final namecontrollerTour = useTextEditingController();

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
          onPressed: () {
            ref.read(PostApiRepostryProvider).postapi(
                  name: namecontrollerTour.text,
                  phone: phonecontrollerTour.text,
                  deviceId: deviceidcontrollerTour.text,
              driver: true,
              email: emailcontrollerTour.text,
                );

            emailcontrollerTour.clear();
          },
          child: Text("Button"),
        ),
      ])),
    );
  }
}
