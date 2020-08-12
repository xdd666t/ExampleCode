import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListPage extends Page<ListState, Map<String, dynamic>> {
  ListPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ListState>(
              ///绑定Adapter
              adapter: NoneConn<ListState>() + ListItemAdapter(),
              slots: <String, Dependent<ListState>>{}),
          middleware: <Middleware<ListState>>[],
        );
}
