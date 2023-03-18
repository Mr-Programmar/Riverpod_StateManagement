import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/StateNotifierProvider/Counter_Notifier.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    int count =ref.watch(counterProvider);

    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            ref.read(counterProvider.notifier).increment();


          }, child: Icon(Icons.add)),
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(child: Text(count.toString(),style: TextStyle(fontSize: 60)),),
    );
  }
}
