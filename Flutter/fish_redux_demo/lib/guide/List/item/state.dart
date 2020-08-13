import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {

  String title;
  String subTitle;
  bool section;
  int id;

  ItemState({this.id,this.title,this.subTitle,this.section});

  @override
  ItemState clone() {
    return ItemState()..title = title..subTitle = subTitle..section = section..id = id;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
