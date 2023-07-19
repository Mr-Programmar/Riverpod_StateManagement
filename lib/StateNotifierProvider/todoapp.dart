import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoUi extends ConsumerWidget {
  Widget mycard( String textlu) {
    return Card(
      child: ListTile(title: Text(textlu.toString())),
    );
  }

  const TodoUi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Text("add")),
      appBar: AppBar(title: Text("Todo App")),
      body: Column(children: [
        mycard("no kam aj kae leye"),
      ]),
    ));
  }
}
