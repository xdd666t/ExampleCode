import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_use/app/utils/ui/keep_alive_page.dart';
import 'package:flutter_use/bean/common/btn_info.dart';
import 'package:flutter_use/module/example/example_view.dart';
import 'package:flutter_use/module/function/function_view.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState().init()) {
    // 注册事件处理器（替代旧版 mapEventToState）
    on<MainInitEvent>(_onInit);
    on<SwitchTabEvent>(_onSwitchTab);
  }

  ///初始化操作
  Future<void> _onInit(MainInitEvent event, Emitter<MainState> emit) async {
    emit(state.clone());
  }

  ///切换tab
  void _onSwitchTab(SwitchTabEvent event, Emitter<MainState> emit) {
    emit(state.clone()..selectedIndex = event.selectedIndex);
  }
}
