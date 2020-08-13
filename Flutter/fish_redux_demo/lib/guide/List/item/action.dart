import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction { action,section }

class ItemActionCreator {
  static Action onAction() {
    return const Action(ItemAction.action);
  }

  //修改选择
  static Action onSection(int id) {
    return Action(ItemAction.section, payload: id);
  }

}
