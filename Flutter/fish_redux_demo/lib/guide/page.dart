import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class GuidePage extends Page<GuideState, Map<String, dynamic>> {
  GuidePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<GuideState>(
                adapter: null,
                slots: <String, Dependent<GuideState>>{
                }),
            middleware: <Middleware<GuideState>>[
            ],);

}
