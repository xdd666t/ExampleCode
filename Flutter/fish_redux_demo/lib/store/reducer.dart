import 'package:fish_redux/fish_redux.dart';
import 'dart:ui';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Reducer<GlobalState> buildReducer(){
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
  final Color next =
  _colors[((_colors.indexOf(state.themeColor) + 1) % _colors.length)];
  return state.clone()..themeColor = next;
}