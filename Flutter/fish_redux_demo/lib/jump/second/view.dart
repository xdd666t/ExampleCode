import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SecondState state, Dispatch dispatch, ViewService viewService) {
  return PopScope(
    canPop: false,
    onPopInvokedWithResult: (didPop, result) {
      if (!didPop) {
        dispatch(SecondActionCreator.backFirst());
      }
    },
    child: _bodyWidget(state),
  );
}

Widget _bodyWidget(SecondState state) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("SecondPage"),
      backgroundColor: state.store?.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('下方数据是FirstPage页面传递过来的:'),
          Text(state.msg),
        ],
      ),
    ),
  );
}
