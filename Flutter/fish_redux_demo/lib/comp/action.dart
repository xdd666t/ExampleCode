import 'package:fish_redux/fish_redux.dart';

enum CompAction { change }

class CompActionCreator {
  static Action change() {
    return const Action(CompAction.change);
  }
}
