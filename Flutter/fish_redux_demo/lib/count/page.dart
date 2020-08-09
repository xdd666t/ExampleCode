import 'package:fish_redux/fish_redux.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CountPage extends Page<CountState, Map<String, dynamic>> {
  CountPage()
      : super(
          initState: initState,
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<CountState>(
            adapter: null,
            slots: <String, Dependent<CountState>>{},
          ),
          middleware: <Middleware<CountState>>[],
        );
}
