import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CountState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(CountState state, Dispatch dispatch) {
  return Scaffold(
    appBar: AppBar(
      title: Text("FishRedux"),

      ///全局主题，仅仅在此处改动了一行
      backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          Text(state.count.toString()),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        ///点击事件，调用action 计数自增方法
        dispatch(CountActionCreator.updateCount());
      },
      child: Icon(Icons.add),
    ),
  );
}
