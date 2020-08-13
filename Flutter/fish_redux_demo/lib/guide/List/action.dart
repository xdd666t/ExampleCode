import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListAction { action }

class ListActionCreator {
  static Action onAction() {
    return const Action(ListAction.action);
  }
}
