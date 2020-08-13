
import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'item/state.dart';

class ListState extends MutableSource implements Cloneable<ListState>  {

  List<ItemState> itemList;

  @override
  ListState clone() {
    return ListState()..itemList = itemList;
  }

  @override
  Object getItemData(int index)=>itemList[index];

  @override
  String getItemType(int index) => ListItemAdapter.itemName;

  @override
  int get itemCount => itemList.length;

  @override
  void setItemData(int index, Object data) {
    itemList[index] = data;
    print((data as ItemState).section);
  }

}

ListState initState(Map<String, dynamic> args) {
  return ListState()..itemList=[
    ItemState(id: 1,title: "标题1",subTitle: "副标题1",section: false),
    ItemState(id: 2,title: "标题1",subTitle: "副标题1",section: false),
    ItemState(id: 3,title: "标题1",subTitle: "副标题1",section: false),
    ItemState(id: 4,title: "标题1",subTitle: "副标题1",section: true),
    ItemState(id: 5,title: "标题1",subTitle: "副标题1",section: false),
  ];
}
