import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';

abstract class GlobalBaseState{
  Color themeColor;
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState>{
  @override
  Color themeColor;

  @override
  GlobalState clone() {
    return GlobalState();
  }
}