import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      ItemAction.onChange: _onChange,
      ItemAction.clear: _clear,
    },
  );
}

ItemState _onChange(ItemState state, Action action) {
  if (state.id == action.payload) {
    return state.clone()..itemStatus = !state.itemStatus;
  }

  ///这地方一定要注意，要返回:state；不能返回:state.clone()，否则会造成后续更新失灵
  return state;
}

///单选模式
ItemState _clear(ItemState state, Action action) {
  if (state.itemStatus) {
    return state.clone()..itemStatus = false;
  }

  ///这地方一定要注意，要返回:state；不能返回:state.clone()，否则会造成后续更新失灵
  return state;
}
