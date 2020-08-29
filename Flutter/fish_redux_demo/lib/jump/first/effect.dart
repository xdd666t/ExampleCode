import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/main.dart';
import 'package:flutter/cupertino.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<FirstState> ctx) async {
  ///页面之间传值；这地方必须写个异步方法，等待上个页面回传过来的值；as关键字是类型转换
  var result = await Navigator.pushNamed(ctx.context, RouteConfig.secondPage,
      arguments: {"firstValue": FirstState.fixedMsg});
  ctx.dispatch(FirstActionCreator.updateMsg((result as Map)["secondValue"]));
}
