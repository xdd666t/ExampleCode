
import 'package:fish_redux/fish_redux.dart';

import 'item/component.dart';
import 'state.dart';

class ListItemAdapter extends SourceFlowAdapter<ListState> {
  static const String itemName = "item";


  ListItemAdapter()
      : super(
    pool: <String, Component<Object>>{
      itemName:ItemComponent()
    },
  );
}
