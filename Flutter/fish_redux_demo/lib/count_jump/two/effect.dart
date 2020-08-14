import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'action.dart';
import 'state.dart';


Effect<TwoState> buildEffect() {
  return combineEffects(<Object, Effect<TwoState>>{
    TwoAction.backFirst: _backFirst,
  });
}

void _backFirst(Action action, Context<TwoState> ctx) {
  Navigator.pop(ctx.context, {"twoValue": TwoState.fixedMsg});
}