import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OneAction { updateCount, toSecond , updateMsg }

class OneActionCreator {
  ///去reducer层更新数据，传参可以放在Action类中的payload字段中，payload是dynamic类型，可传任何类型
  static Action updateCount() {
    return Action(OneAction.updateCount);
  }

  ///跳转到第二个页面
  static Action toSecond() {
    return const Action(OneAction.toSecond);
  }
  ///拿到第二个页面返回的数据,执行更新数据操作
  static Action updateMsg(String msg) {
    return Action(OneAction.updateMsg, payload: msg);
  }
}
