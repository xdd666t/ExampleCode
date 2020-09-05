import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstAction { toSecond, updateMsg }

class FirstActionCreator {
  ///跳转到第二个页面
  static Action toSecond() {
    return const Action(FirstAction.toSecond);
  }

  ///拿到第二个页面返回的数据,执行更新数据操作
  static Action updateMsg(String msg) {
    return Action(FirstAction.updateMsg, payload: msg);
  }
}
