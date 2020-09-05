import 'dart:math';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<CompState> buildReducer() {
  return asReducer(
    <Object, Reducer<CompState>>{
      CompAction.change: _change,
    },
  );
}

CompState _change(CompState state, Action action) {
  final CompState newState = state.clone();
  //改变leftAreaComponent中state
  newState.leftAreaState.text = "LeftAreaState：${Random().nextInt(1000)}";
  newState.leftAreaState.color =
      Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);

  //改变rightAreaComponent中state
  newState.rightAreaState.text = "RightAreaState：${Random().nextInt(1000)}";
  newState.rightAreaState.color =
      Color.fromRGBO(randomColor(), randomColor(), randomColor(), 1);

  return newState;
}

int randomColor() {
  return Random().nextInt(255);
}
