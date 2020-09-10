import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'left_right_area/state.dart';

class CompState implements Cloneable<CompState> {
  AreaState leftAreaState;
  AreaState rightAreaState;

  @override
  CompState clone() {
    return CompState()
      ..rightAreaState = rightAreaState
      ..leftAreaState = leftAreaState;
  }
}

CompState initState(Map<String, dynamic> args) {
  ///初始化数据
  return CompState()
    ..rightAreaState = AreaState(
      title: "LeftAreaComponent",
      text: "LeftAreaComponent",
      color: Colors.indigoAccent,
    )
    ..leftAreaState = AreaState(
      title: "RightAreaComponent",
      text: "RightAreaComponent",
      color: Colors.blue,
    );
}

///左边Component连接器
class LeftAreaConnector extends ConnOp<CompState, AreaState>
    with ReselectMixin<CompState, AreaState> {
  @override
  AreaState computed(CompState state) {
    return state.leftAreaState.clone();
  }

  @override
  void set(CompState state, AreaState subState) {
    state.leftAreaState = subState;
  }
}

///右边Component连接器
class RightAreaConnector extends ConnOp<CompState, AreaState>
    with ReselectMixin<CompState, AreaState> {
  @override
  AreaState computed(CompState state) {
    return state.rightAreaState.clone();
  }

  @override
  void set(CompState state, AreaState subState) {
    state.rightAreaState = subState;
  }
}
