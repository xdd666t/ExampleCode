import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GuideState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(dispatch);
}

Widget _bodyWidget(Dispatch dispatch) {
  return Scaffold(
    appBar: AppBar(
      title: Text("FirstPage"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _jumpButton("toCount", () {
            dispatch(GuideActionCreator.toCount());
          }),
          _jumpButton("toJump", () {
            dispatch(GuideActionCreator.toJump());
          }),
          _jumpButton("toList", () {
            dispatch(GuideActionCreator.toList());
          }),
        ],
      ),
    ),
  );
}

typedef CallBack = void Function();

Widget _jumpButton(String name, CallBack callBack) {
  return InkWell(
    customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    splashColor: Colors.lightBlueAccent,
    highlightColor: Colors.lightBlueAccent,
    child: RaisedButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text(name),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        ///监听点击事件
        callBack();
      },
    ),
  );
}
