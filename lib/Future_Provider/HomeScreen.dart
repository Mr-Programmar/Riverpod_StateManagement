import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../StreamProvider/our_stream_provider.dart';
import 'our_future_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TextButton(

      //   child: Text("Future Provider"),onPressed:(){
      // Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherScreen() ,));


        child: Text("Stream Provider",style: TextStyle(fontSize: 40, color: Colors.blue),),onPressed:(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => NumbersScreen() ,));



      
      
      
    } ),));
  }
}
