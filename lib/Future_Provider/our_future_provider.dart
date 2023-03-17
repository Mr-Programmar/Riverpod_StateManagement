import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dummy_weather_report.dart';

final weatherProvider = FutureProvider.autoDispose<String>((ref) => fetechWeatherReport());

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Todays Weather")),
            body: ref.watch(weatherProvider).when(
              data: (data) {
                return Center(
                    child: Text(
                  data,
                  style: TextStyle(fontSize: 50),
                ));
              },
              error: (error, stackTrace) {
                return Text(error.toString());
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
            )));
  }
}
