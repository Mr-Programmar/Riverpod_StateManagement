import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Junaid extends ConsumerWidget {
   Junaid({Key? key}) : super(key: key);


   final asadprovider= StateNotifierProvider<CounterClass,int>((ref) => CounterClass());


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final save=ref.watch(asadprovider);
    
    
    return  Column(
      children: [
        Text(save.toString()),
        TextButton(onPressed: (){

ref.read(asadprovider.notifier).junaidmethiod();


        }, child: Text("add")),
      ],
    );
  }
}



class CounterClass extends StateNotifier<int>{
  CounterClass() : super(0);


  

void junaidmethiod(){

  state=state+1;

}



}
