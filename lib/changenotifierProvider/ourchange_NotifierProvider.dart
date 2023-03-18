import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/changenotifierProvider/user1.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("User"),
      ),
      
      body: Center(child: Consumer(builder:  (context, ref, child) {

        var data= ref.watch(userProvider);

        return  Text(data.username,style: TextStyle(fontSize: 40),);
      }, )),
      
      floatingActionButton: FloatingActionButton(onPressed: () {


        ref.read(userProvider.notifier).changeUserName();

      },
      
      child: Icon(Icons.change_circle),
      ) ,
      
    );
  }
}
