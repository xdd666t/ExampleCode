import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/state.dart';

class GuideState implements Cloneable<GuideState>,GlobalBaseState {

  @override
  GuideState clone() {
    return GuideState();
  }

  @override
  Color themeColor;
}

GuideState initState(Map<String, dynamic> args) {
  return GuideState();
}
