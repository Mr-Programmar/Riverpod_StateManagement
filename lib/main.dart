import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Future_Provider/HomeScreen.dart';
import 'StateNotifierProvider/our_stateNotifier_Provider.dart';
import 'StateProvider/our_State_provider.dart';
import 'changenotifierProvider/ourchange_NotifierProvider.dart';

// final stringprovider= Provider<String>((ref) {
//
//   return "flutter riverpod";
//
// },);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const  UserScreen(),
    );
  }
}


// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     String ourdata = ref.read<String>(stringprovider);
//     return Scaffold(body: Center(child: Text(ourdata,style: TextStyle(fontSize: 30),),));
//   }
// }


