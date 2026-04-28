import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FirstState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(FirstState state, Dispatch dispatch) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("FirstPage"),
      backgroundColor: state.store?.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('下方数据是SecondPage页面传递过来的:'),
          Text(state.msg),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        ///跳转到Second页面
        dispatch(FirstActionCreator.toSecond());
      },
      child: const Icon(Icons.arrow_forward),
    ),
  );
}
