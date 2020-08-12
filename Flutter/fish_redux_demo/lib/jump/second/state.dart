import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';

class SecondState implements Cloneable<SecondState>,GlobalBaseState {
  ///传递给下个页面的值
  static const String fixedMsg = "\n我是SecondPage页面传递过来的数据：SecondValue";
  ///展示传递过来的值
  String msg;

  @override
  SecondState clone() {
    return SecondState()..msg = msg;
  }

  @override
  Color themeColor;
}

SecondState initState(Map<String, dynamic> args) {
  return SecondState()..msg = args["firstValue"];
}
