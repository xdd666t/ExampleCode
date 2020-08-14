import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'item/state.dart';

class ListEditState extends MutableSource implements Cloneable<ListEditState> {
  List<ItemState> items;

  @override
  ListEditState clone() {
    return ListEditState()..items = items;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => ListItemAdapter.itemName;

  @override
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }
}

ListEditState initState(Map<String, dynamic> args) {
  return ListEditState()
    ..items = [
      ItemState(id: 1, title: "列表Item-1", itemStatus: false),
      ItemState(id: 2, title: "列表Item-2", itemStatus: false),
      ItemState(id: 3, title: "列表Item-3", itemStatus: false),
      ItemState(id: 4, title: "列表Item-4", itemStatus: false),
      ItemState(id: 5, title: "列表Item-5", itemStatus: false),
      ItemState(id: 6, title: "列表Item-6", itemStatus: false),
    ];
}
