import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/StreamProvider/fetch_numbers.dart';



class NumbersScreen extends ConsumerWidget {
  const NumbersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    var asyncValue=ref.watch(numbersProvider);

    return  Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),


      ),

    body: asyncValue.when(data: (data) {

      return Center(child: Text(data.toString(),style: TextStyle(fontSize: 40),));

    }, error: (error, stackTrace) {
return Text(error.toString());
    }, loading: () {

      return CircularProgressIndicator();

    },) ,

    );
  }
}
