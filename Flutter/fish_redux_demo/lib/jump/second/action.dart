import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SecondAction { backFirst }

class SecondActionCreator {
  ///返回到第一个页面，然后从栈中移除自身，同时传回去一些数据
  static Action backFirst() {
    return const Action(SecondAction.backFirst);
  }
}
