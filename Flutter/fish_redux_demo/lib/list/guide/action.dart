import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GuideAction { action }

class GuideActionCreator {
  static Action onAction() {
    return const Action(GuideAction.action);
  }
}
