import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use_demo/module/function/widget/function_items.dart';

import 'function_cubit.dart';
import 'function_state.dart';

class FunctionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      ///在MainBloc上使用add方法,添加初始化事件
      create: (BuildContext context) => FunctionCubit(),
      child: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<FunctionCubit, FunctionState>(
      builder: (context, state) {
        return FunctionItems(
          items: state.items,
          onItem: (String tag) {
            context.bloc<FunctionCubit>().toFun(context, tag);
          },
        );
      },
    );
  }
}
