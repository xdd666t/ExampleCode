import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class RightAreaComponent extends Component<RightAreaState> {
  RightAreaComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<RightAreaState>(
                adapter: null,
                slots: <String, Dependent<RightAreaState>>{
                }),);

}
