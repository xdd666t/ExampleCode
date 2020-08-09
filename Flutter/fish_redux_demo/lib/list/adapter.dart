import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/state.dart';

import 'item/component.dart';

class ListItemAdapter extends SourceFlowAdapter<ListState> {
  static const String item_style = "project_tab_item";

  ListItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            ///定义item的样式
            item_style: ItemComponent(),
          },
        );
}
