import 'package:fish_redux/fish_redux.dart';

class HomeState implements Cloneable<HomeState> {

  @override
  HomeState clone() {
    return HomeState();
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState();
}
