import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) => 0);

class CounterWidget extends ConsumerWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Counter app")),
        floatingActionButton:
            FloatingActionButton(onPressed: ()
            {

          ref.read(counterStateProvider.notifier).state=ref.read(counterStateProvider.notifier).state+1;



            }, child: Icon(Icons.add)),
        body: Center(
            child: Text(
              ref.watch(counterStateProvider).toString(),
              style: TextStyle(fontSize: 90, color: Colors.amberAccent),
            )),
      ),
    );
  }
}
