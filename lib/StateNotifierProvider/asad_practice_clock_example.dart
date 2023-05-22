import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';







final clockProvider=StateNotifierProvider<Clock,DateTime >((ref) {
  return Clock();
});


class Clock extends StateNotifier<DateTime> {

  late final Timer _timer;

  Clock() : super(DateTime.now()){


// 2. create a timer that fires every second
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      // 3. update the state with the current time
      state = DateTime.now();
    });
  }









}




class ClockWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch the StateNotifierProvider to return a DateTime (the state)
    final currentTime = ref.watch(clockProvider);
    // format the time as `hh:mm:ss`

    return Text(currentTime.toString());
  }
}
