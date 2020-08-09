import 'package:fish_redux/fish_redux.dart';

class GuideState implements Cloneable<GuideState> {

  @override
  GuideState clone() {
    return GuideState();
  }
}

GuideState initState(Map<String, dynamic> args) {
  return GuideState();
}
