import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<GuideState> buildReducer() {
  return asReducer(
    <Object, Reducer<GuideState>>{
      GuideAction.action: _onAction,
    },
  );
}

GuideState _onAction(GuideState state, Action action) {
  final GuideState newState = state.clone();
  return newState;
}
