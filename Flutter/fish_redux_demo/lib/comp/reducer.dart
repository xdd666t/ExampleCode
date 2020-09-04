import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CompState> buildReducer() {
  return asReducer(
    <Object, Reducer<CompState>>{
      CompAction.action: _onAction,
    },
  );
}

CompState _onAction(CompState state, Action action) {
  final CompState newState = state.clone();
  return newState;
}
