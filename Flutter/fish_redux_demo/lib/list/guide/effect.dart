import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.action: _onAction,
  });
}

void _onAction(Action action, Context<GuideState> ctx) {
}
