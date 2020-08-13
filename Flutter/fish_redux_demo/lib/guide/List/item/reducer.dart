import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      ItemAction.section:_onSection
    },
  );
}

ItemState _onSection(ItemState state, Action action) {
  ItemState newState = state.clone();
  if(state.id == action.payload){
    return  newState..section = !state.section;
  }
  return state;
}
