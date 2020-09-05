import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CompState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        ///Component组件部分
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Expanded(child: viewService.buildComponent("leftArea")),
              Expanded(child: viewService.buildComponent("rightArea")),
            ],
          ),
        ),

        ///按钮
        Expanded(
            flex: 1,
            child: Center(
              child: RawMaterialButton(
                fillColor: Colors.blue,
                shape: StadiumBorder(),
                onPressed: () => dispatch(CompActionCreator.change()),
                child: Text("改变"),
              ),
            ))
      ],
    ),
  );
}
