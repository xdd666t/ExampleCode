import 'package:fish_redux/fish_redux.dart';


enum TwoAction { backFirst }

class TwoActionCreator {
  ///返回到第一个页面，然后从栈中移除自身，同时传回去一些数据
  static Action backFirst() {
    return const Action(TwoAction.backFirst);
  }
}
