import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.updateItem: _updateItem,
    },
  );
}

ListState _updateItem(ListState state, Action action) {
  return state.clone()..items = action.payload;
}
