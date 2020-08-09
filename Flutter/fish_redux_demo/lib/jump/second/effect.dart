import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<SecondState> buildEffect() {
  return combineEffects(<Object, Effect<SecondState>>{
    SecondAction.backFirst: _backFirst,
  });
}

void _backFirst(Action action, Context<SecondState> ctx) {
  Navigator.pop(ctx.context, {"secondValue": SecondState.fixedMsg});
}
