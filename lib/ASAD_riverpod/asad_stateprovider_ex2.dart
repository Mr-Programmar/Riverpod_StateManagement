import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final textcontroller_provider= StateProvider<String>((ref) => "");

class Example3 extends ConsumerWidget {
   Example3({
    Key? key,
  }) : super(key: key);

  TextEditingController _textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

   var save= ref.watch(textcontroller_provider);


    return SafeArea(
      child: Scaffold(body: Column(
        children: [

          TextFormField(controller: _textEditingController    ),
          ElevatedButton(onPressed: (){
            ref.read(textcontroller_provider.notifier).update((state) => _textEditingController.text.toString());
            print("hi");
            
            
          }, child: Text("Show")),
          Text(save.toString()),

        ],


      ),),
    );
  }
}
