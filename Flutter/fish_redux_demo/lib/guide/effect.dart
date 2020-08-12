import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/store/action.dart';
import 'package:fish_redux_demo/store/store.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.toCount: _toCount,
    GuideAction.toJump: _toJump,
    GuideAction.toList: _toList,
    GuideAction.switchTheme: _switchTheme,
  });
}

void _toCount(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed("CountPage");
}

void _toJump(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed("FirstPage");
}

void _toList(Action action, Context<GuideState> ctx) {
  Navigator.of(ctx.context).pushNamed("ListPage");
}
///全局切换主体
void _switchTheme(Action action, Context<GuideState> ctx) {
  print(".............");
  GlobalStore.store.dispatch(GlobalActionCreator.onChangeThemeColor());
}
