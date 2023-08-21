import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'StateProvider/asad_practice.dart';
import 'StreamProvider/our_stream_provider.dart';

class Test extends ConsumerStatefulWidget {
  const Test({super.key});

  @override
  ConsumerState createState() => _TestState();
}

class _TestState extends ConsumerState<Test> {

  @override
  void initState() {
    print("---------------init------------");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("---------------didChangeDependencies------------");
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    print("---------------Build------------");

    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            ElevatedButton(onPressed: (){



            }, child: Text("Button1")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NumbersScreen()),
              );

            }, child: Text("Move Next")),
            ElevatedButton(onPressed: (){
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) =>  ColorChange ()),
              );

            }, child: Text("Move back")),


          ],



        ),


      ),
    );
  }


  @override
  void deactivate() {
    print("---------------deactive------------");
    super.deactivate();
  }

  @override
  void dispose() {
    print("---------------dispose------------");

    super.dispose();
  }







}
