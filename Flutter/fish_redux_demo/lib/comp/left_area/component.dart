import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

class LeftAreaComponent extends Component<LeftAreaState> {
  LeftAreaComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<LeftAreaState>(
                adapter: null,
                slots: <String, Dependent<LeftAreaState>>{
                }),);

}
