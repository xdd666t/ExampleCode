import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';
import 'package:flutter/cupertino.dart';

class TwoState implements Cloneable<TwoState>,GlobalBaseState {
  ///传递给下个页面的值
  static const String fixedMsg = "\n我是TwoPage页面传递过来的数据：TwoValue";
  ///展示传递过来的值
  String msg;

  @override
  TwoState clone() {
    return TwoState()..msg = msg;
  }

  @override
  Color themeColor;
}

TwoState initState(Map<String, dynamic> args) {
  return TwoState()..msg = args["oneValue"];
}
