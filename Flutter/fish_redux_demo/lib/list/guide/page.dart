import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class GuidePage extends Page<GuideState, Map<String, dynamic>> {
  GuidePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<GuideState>(
                adapter: null,
                slots: <String, Dependent<GuideState>>{
                }),
            middleware: <Middleware<GuideState>>[
            ],);

}
