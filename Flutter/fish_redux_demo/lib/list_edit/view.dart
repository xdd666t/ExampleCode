import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListEditState state, Dispatch dispatch, ViewService viewService) {
  final adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      title: const Text("ListEditPage"),
    ),
    body: adapter != null && adapter.itemBuilder != null
        ? ListView.builder(
            itemBuilder: adapter.itemBuilder!,
            itemCount: adapter.itemCount,
          )
        : const SizedBox.shrink(),
  );
}
