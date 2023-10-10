import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/sending%20image%20to%20server_%20Post%20api/image_send_to_server.dart';

import 'StateNotifierProvider/asad_counter_app.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var condition = ref.watch(light);
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: condition == true ? ThemeMode.light : ThemeMode.dark,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageScreen(),
    );
  }
}

// class HomeeScreen extends ConsumerWidget {
//   HomeeScreen({Key? key}) : super(key: key);
//
//
//   StreamController<int> bhai = StreamController<int>();
//   int a = 0;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//
//     return StreamBuilder<int>(
//
//
//         stream: bhai.stream,
//
//         builder: (context, snapshot) {
//
//
//           return Column(
//             children: [
//               Text("$a"),
//               FloatingActionButton(onPressed: (){
//
//                 a++;
//                 bhai.sink.add(a);
//               })
//             ],
//           );
//         });
//   }
// }
