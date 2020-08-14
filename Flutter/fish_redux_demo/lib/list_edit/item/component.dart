import 'package:fish_redux/fish_redux.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ItemComponent extends Component<ItemState> {
  ItemComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ItemState>(
                adapter: null,
                slots: <String, Dependent<ItemState>>{
                }),);

}
