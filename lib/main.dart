

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ASAD_riverpod/Post_Api/post_api_AtoZ.dart';
import 'ASAD_riverpod/asadScreen.dart';
import 'ASAD_riverpod/asad_stateprovider_ex2.dart';
import 'ASAD_riverpod/get_Api/get_api_AtoZ_work.dart';
import 'ASAD_riverpod/get_api_AtoZ_example2/get_api_AtoZ_example2.dart';
import 'ASAD_riverpod/get_api_example_3_AtoZ/get_api_example_3.dart';
import 'FutureProvider_API/Services.dart';
import 'FutureProvider_API/UIScreen.dart';
import 'Future_Provider/HomeScreen.dart';
import 'Future_Provider/asad_api_complete_example.dart';
import 'StateNotifierProvider/asad_practice_clock_example.dart';
import 'StateNotifierProvider/our_stateNotifier_Provider.dart';
import 'StateNotifierProvider/asad_counter_app.dart';
import 'StateNotifierProvider/todoapp.dart';
import 'StateProvider/asad_practice.dart';
import 'StateProvider/our_State_provider.dart';
import 'changenotifierProvider/ourchange_NotifierProvider.dart';




void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {

    var condition=ref.watch(light);
    return MaterialApp(



      darkTheme: ThemeData.dark(),


      themeMode: condition==true? ThemeMode.light:ThemeMode.dark ,


      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostApiScreen(),
    );
  }
}

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // String ourdata = ref.read<String>(stringprovider);
//
//
//     return Scaffold(
//         body: Center(
//       child: TextButton(child:Text("Hit Api") ,onPressed: (){
//
//
//
//
//       },)
//     ));
//   }
// }
