import 'package:fish_redux/fish_redux.dart';

class CompState implements Cloneable<CompState> {

  @override
  CompState clone() {
    return CompState();
  }
}

CompState initState(Map<String, dynamic> args) {
  return CompState();
}
