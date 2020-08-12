import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/jump/second/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.updateMsg: _updateMsg,
    },
  );
}

FirstState _updateMsg(FirstState state, Action action) {
  return state.clone()
    ..themeColor = state.themeColor
    ..msg = action.payload;
}
