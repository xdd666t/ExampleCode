import 'package:fish_redux/fish_redux.dart';

enum BroadcastAction { toNotify }

class BroadcastActionCreator {
  ///广播通知
  static Action toNotify(String msg) {
    return Action(BroadcastAction.toNotify, payload: msg);
  }
}
