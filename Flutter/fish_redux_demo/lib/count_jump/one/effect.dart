import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/jump/first/state.dart' ;
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<OneState> buildEffect() {
  return combineEffects(<Object, Effect<OneState>>{
    OneAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<OneState> ctx) async{
  ///页面之间传值；这地方必须写个异步方法，等待上个页面回传过来的值；as关键字是类型转换
  var result = await Navigator.of(ctx.context).pushNamed("TwoPage", arguments: {"oneValue": FirstState.fixedMsg});
  ctx.dispatch(OneActionCreator.updateMsg( (result as Map)["twoValue"]) );
}

