import 'package:fish_redux/fish_redux.dart';

import 'left_right_area/component.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CompPage extends Page<CompState, Map<String, dynamic>> {
  CompPage()
      : super(
          initState: initState,
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<CompState>(
              adapter: null,
              slots: <String, Dependent<CompState>>{
                //绑定Component
                "leftArea": LeftAreaConnector() + AreaComponent(),
                "rightArea": RightAreaConnector() + AreaComponent(),
              }),
          middleware: <Middleware<CompState>>[],
        );
}
