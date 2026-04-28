import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("ListPage"),
      backgroundColor: state.store?.themeColor,
    ),
    body: _itemWidget(state, viewService),
  );
}

Widget _itemWidget(ListState state, ViewService viewService) {
  if (state.items.isNotEmpty) {
    ///使用列表
    final adapter = viewService.buildAdapter();
    if (adapter == null || adapter.itemBuilder == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      itemBuilder: adapter.itemBuilder!,
      itemCount: adapter.itemCount,
    );
  } else {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
