import 'package:fish_redux/fish_redux.dart';

class CountState implements Cloneable<CountState> {
  int count = 0;

  @override
  CountState clone() {
    return CountState()..count = count;
  }
}

CountState initState(Map<String, dynamic> args) {
  return CountState();
}
