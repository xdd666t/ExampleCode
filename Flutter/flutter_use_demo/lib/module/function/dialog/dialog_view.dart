import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use_demo/module/function/dialog/dialog_cubit.dart';
import 'package:flutter_use_demo/module/function/widget/function_items.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      ///在MainBloc上使用add方法,添加初始化事件
      create: (BuildContext context) => DialogCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: _body(),
      ),
    );
  }


  Widget _body(){
    return BlocBuilder<DialogCubit, DialogState>(
      builder: (context, state) {
        return FunctionItems(
          items: state.items,
          constraints: BoxConstraints(minWidth: 100, minHeight: 36),
          onItem: (String tag) {
            context.bloc<DialogCubit>().showFun(context, tag);
          },
        );
      },
    );
  }

}
