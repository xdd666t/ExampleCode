import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/adapter.dart';
import 'package:fish_redux_demo/list/item/state.dart';
import 'package:fish_redux_demo/store/state.dart';

class ListState extends MutableSource implements Cloneable<ListState>,GlobalBaseState {
  ///这地方一定要注意,List里面的泛型,需要定义为ItemState
  ///怎么更新列表数据,只需要更新这个items里面的数据,列表数据就会相应更新
  List<ItemState> items;

  @override
  ListState clone() {
    return ListState()..items = items
        ..store = store;
  }

  ///使用上面定义的List,继承MutableSource,就把列表和item绑定起来了
  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => ListItemAdapter.item_style;

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }

  @override
  StoreModel store;
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
