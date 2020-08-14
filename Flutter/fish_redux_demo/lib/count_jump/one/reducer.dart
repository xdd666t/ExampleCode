import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OneState> buildReducer() {
  return asReducer(
    <Object, Reducer<OneState>>{
      OneAction.updateCount: _updateCount,
      OneAction.updateMsg: _updateMsg,
    },
  );
}

///通知View层更新界面
OneState _updateCount(OneState state, Action action) {
  return state.clone()..count = state.count + 1;
}

OneState _updateMsg(OneState state, Action action) {
  return state.clone()
//    ..themeColor = state.themeColor
    ..msg = action.payload;
}
