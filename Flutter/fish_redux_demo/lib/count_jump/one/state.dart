import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';
import 'package:flutter/material.dart';

class OneState implements Cloneable<OneState>, GlobalBaseState {
  ///计数变量
  int count;

  ///传递给下个页面的值
  static const String fixedMsg = "\n我是OnePage页面传递过来的数据：OneValue";

  ///展示传递过来的值
  String msg;

  @override
  OneState clone() {
    return OneState()
      ..count = count
      ..themeColor = themeColor
      ..msg = msg;
  }

  @override
  Color themeColor;
}

OneState initState(Map<String, dynamic> args) {
  return OneState()
    ..count = 0
    ..msg = "\n暂无";
}
