import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Reducer<GlobalState>? buildReducer(){
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.changeThemeColor: _onChangeThemeColor,
    },
  );
}

List<Color> _colors = <Color>[
  Colors.green,
  Colors.red,
  Colors.black,
  Colors.blue
];

GlobalState _onChangeThemeColor(GlobalState state, Action action) {
  final Color current = state.store?.themeColor ?? Colors.blue;
  final Color next =
  _colors[((_colors.indexOf(current) + 1) % _colors.length)];
  return state.clone()..store = StoreModel(themeColor: next);
}
