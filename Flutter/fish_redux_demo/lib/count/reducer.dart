import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountState>>{
      CountAction.updateCount: _updateCount,
    },
  );
}
///通知View层更新界面
CountState _updateCount(CountState state, Action action) {
  final CountState newState = state.clone();
  newState..count = state.count + 1;
  return newState;
}
