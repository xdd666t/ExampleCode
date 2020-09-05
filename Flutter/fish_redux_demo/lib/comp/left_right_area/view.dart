import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    AreaState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text(state.title),
      automaticallyImplyLeading: false,
    ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      color: state.color,
      child: Text(state.text),
    ),
  );
}
