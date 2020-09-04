import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CompPage extends Page<CompState, Map<String, dynamic>> {
  CompPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CompState>(
                adapter: null,
                slots: <String, Dependent<CompState>>{
                }),
            middleware: <Middleware<CompState>>[
            ],);

}
