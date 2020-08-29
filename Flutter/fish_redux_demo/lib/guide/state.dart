import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';

class GuideState implements Cloneable<GuideState>, GlobalBaseState {
  @override
  GuideState clone() {
    return GuideState()..store = store;
  }

  @override
  StoreModel store;
}

GuideState initState(Map<String, dynamic> args) {
  return GuideState();
}
