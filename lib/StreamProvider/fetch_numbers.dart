
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numbersProvider=StreamProvider.autoDispose((ref) {

  return fetchNumbers();

},);


Stream<int> fetchNumbers() {
  return Stream.periodic(
    Duration(seconds: 2),
    (number) => number,
  ).take(100);


}
