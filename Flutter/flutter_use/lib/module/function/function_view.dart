import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use/module/function/widget/function_items.dart';

import 'function_cubit.dart';
import 'function_state.dart';

class FunctionPage extends StatelessWidget {
  const FunctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      ///在MainBloc上使用add方法,添加初始化事件
      create: (BuildContext context) => FunctionCubit(),
      child: BlocBuilder<FunctionCubit, FunctionState>(builder: _body),
    );
  }

  Widget _body(BuildContext context, FunctionState state) {
    return FunctionItems(
      items: state.items,
      onItem: (String tag) {
        context.read<FunctionCubit>().toFun(context, tag);
      },
    );
  }
}
