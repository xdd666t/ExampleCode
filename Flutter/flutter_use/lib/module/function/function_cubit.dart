import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use/app/routes/navigator_util.dart';

import 'function_state.dart';

class FunctionCubit extends Cubit<FunctionState> {
  FunctionCubit() : super(FunctionState().init());

  ///跳转到功能模块
  void toFun(BuildContext context, String tag) {
    switch (tag) {
      case 'dialog':
        NavigatorUtil.goDialogPage(context);
        break;
    }
  }
}
