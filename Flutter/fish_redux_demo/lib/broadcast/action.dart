import 'package:fish_redux/fish_redux.dart';

enum BroadcastAction { toNotify }

class BroadcastActionCreator {
  ///广播测试
  static Action toTest(String msg) {
    return Action(BroadcastAction.toNotify, payload: msg);
  }
}
