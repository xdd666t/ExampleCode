import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(OneState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(OneState state, Dispatch dispatch) {
  return Scaffold(
      appBar: AppBar(
        title: Text("OnePage"),
        backgroundColor: state.themeColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(state.count.toString()),
            Padding(padding: EdgeInsets.only(top: 50)),
            Text('下方数据是TwoPage页面传递过来的:'),
            Text(state.msg),
            _bottomWidget(dispatch)
          ],
        ),
      ));
}

///底部按钮控件
Widget _bottomWidget(Dispatch dispatch) {
  return Padding(
    padding: EdgeInsets.only(top: 100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {
            ///计数器
            dispatch(OneActionCreator.updateCount());
          },
          heroTag: "count",
          child: Icon(Icons.add),
        ),
        Padding(padding: EdgeInsets.only(left: 100)),
        FloatingActionButton(
          onPressed: () {
            ///跳转到Second页面
            dispatch(OneActionCreator.toSecond());
          },
          heroTag: "jump",
          child: Icon(Icons.arrow_forward),
        )
      ],
    ),
  );
}
