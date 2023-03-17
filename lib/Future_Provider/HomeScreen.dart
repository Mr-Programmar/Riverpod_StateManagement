import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'our_future_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TextButton(

        child: Text("Future Provider"),onPressed:(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherScreen() ,));
      
      
      
    } ),));
  }
}
