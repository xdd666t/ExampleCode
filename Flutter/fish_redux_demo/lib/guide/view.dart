import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GuideState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(GuideState state, Dispatch dispatch) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("GuidePage"),
      backgroundColor: state.store?.themeColor,
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
          _jumpButton("toListEdit", () {
            dispatch(GuideActionCreator.toListEdit());
          }),
          _jumpButton("toComponent", () {
            dispatch(GuideActionCreator.toComponent());
          }),
          _jumpButton("switchTheme", () {
            dispatch(GuideActionCreator.switchTheme());
          }),
        ],
      ),
    ),
  );
}

typedef CallBack = void Function();

Widget _jumpButton(String name, CallBack callBack) {
  return InkWell(
    customBorder:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    splashColor: Colors.lightBlueAccent,
    highlightColor: Colors.lightBlueAccent,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onPressed: () {
        ///监听点击事件
        callBack();
      },
      child: Text(name),
    ),
  );
}
