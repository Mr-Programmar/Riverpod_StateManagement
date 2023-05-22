import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




final asadprovider= StateProvider<bool>((ref) => true);


class ColorChange extends ConsumerWidget {
  const ColorChange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

      bool asad = ref.watch(asadprovider);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Hello",style: TextStyle(

              color:   asad==true? Colors.red
                       : Colors.amber,

              fontSize: 25,

            ),),
            
            ElevatedButton(onPressed: (){

              ref.read(asadprovider.notifier).state = !asad;

            }, child: Text("Change Color")),
          ],
        ),
      ),
    ) ;
  }
}
