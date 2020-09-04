import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CompAction { action }

class CompActionCreator {
  static Action onAction() {
    return const Action(CompAction.action);
  }
}
