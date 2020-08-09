import 'package:fish_redux/fish_redux.dart';

class CountState implements Cloneable<CountState> {
  int count;

  @override
  CountState clone() {
    return CountState()..count = count;
  }
}

CountState initState(Map<String, dynamic> args) {
  return CountState()..count = 0;
}
