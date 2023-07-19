import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/main.dart';

final asadprovider =
StateNotifierProvider<CounterClass, int>((ref) => CounterClass());

final light = StateProvider<bool>((ref) {

  return true;
});




class Junaid extends ConsumerWidget {
  Junaid({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final save = ref.watch(asadprovider);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(save.toString(),style: TextStyle(fontSize: 25)),
          TextButton(
              onPressed: () {
                ref.read(asadprovider.notifier).junaidmethiod();
                print(ref.read(light.notifier).update((state) => true));

              },
              child: Text("add")),
          TextButton(
              onPressed: () {
                ref.read(asadprovider.notifier).asad_method();

                print(ref.read(light.notifier).update((state) => false));
              },
              child: Text("subtract")),
        ],
      ),
    );
  }
}

class CounterClass extends StateNotifier<int> {
  CounterClass() : super(0);

  void junaidmethiod() {
    state = state + 1;
  }


  void asad_method(){
     state=state-1;
  }


}
