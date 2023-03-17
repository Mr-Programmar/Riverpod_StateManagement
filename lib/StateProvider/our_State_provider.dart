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
              ref.read(counterStateProvider.state).state++;


            }, child: Icon(Icons.add)),
        body: Consumer(
          builder: (context, ref, child) {
            int count = ref.watch(counterStateProvider);

            return Center(
                child: Text(
              count.toString(),
              style: TextStyle(fontSize: 90, color: Colors.amberAccent),
            ));
          },
        ),
      ),
    );
  }
}
