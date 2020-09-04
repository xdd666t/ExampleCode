import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CompState> buildEffect() {
  return combineEffects(<Object, Effect<CompState>>{
    CompAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CompState> ctx) {
}
