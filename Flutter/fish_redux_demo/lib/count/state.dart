import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';

class CountState implements Cloneable<CountState>, GlobalBaseState {
  int count;

  @override
  CountState clone() {
    return CountState()
      ..count = count
      ..store = store;
  }

  @override
  StoreModel store;
}

CountState initState(Map<String, dynamic> args) {
  return CountState()..count = 0;
}
