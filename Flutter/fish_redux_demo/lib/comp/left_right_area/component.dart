import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class AreaComponent extends Component<AreaState> {
  AreaComponent()
      : super(
          view: buildView,
          dependencies: Dependencies<AreaState>(
              adapter: null, slots: <String, Dependent<AreaState>>{}),
        );
}
