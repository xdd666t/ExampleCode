import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: ListTile(
      title: Text("${state.title}"),
      subtitle: Text("${state.subTitle}"),
      trailing: Checkbox(value: state.section, onChanged: (value){
        dispatch(ItemActionCreator.onSection(state.id));
      }),
    ),
  );
}
