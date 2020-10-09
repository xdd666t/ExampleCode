import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use_demo/module/function/widget/function_items.dart';

import 'example_cubit.dart';
import 'widget/tree_items.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      ///在MainBloc上使用add方法,添加初始化事件
      create: (BuildContext context) => ExampleCubit(),
      child: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<ExampleCubit, ExampleState>(
      builder: (context, state) {
        return TreeItems(
          data: state.trees,
          onItem: (String tag){
            print(tag);
          },
        );
      },
    );
  }
}
