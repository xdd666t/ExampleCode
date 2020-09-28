import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction {
  onChange,
  clear,
}

class ItemActionCreator {
  //状态改变
  static Action onChange(int id) {
    return Action(ItemAction.onChange, payload: id);
  }

  //清除改变的状态
  static Action clear() {
    return Action(ItemAction.clear);
  }
}
