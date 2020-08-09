import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListAction { updateItem }

class ListActionCreator {
  static Action updateItem(var list) {
    return Action(ListAction.updateItem, payload: list);
  }
}
