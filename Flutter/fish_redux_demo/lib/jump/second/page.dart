import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class SecondPage extends Page<SecondState, Map<String, dynamic>> {
  SecondPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<SecondState>(
                adapter: null,
                slots: <String, Dependent<SecondState>>{
                }),
            middleware: <Middleware<SecondState>>[
            ],);

}
