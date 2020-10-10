import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use_demo/module/example/bloc/counter/counter_view.dart';
import 'package:flutter_use_demo/module/function/dialog/dialog_view.dart';
import 'package:flutter_use_demo/module/main/main_view.dart';

/// 主页
Handler mainPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return MainPage();
  },
);

/// dialog页面
Handler dialogPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return DialogPage();
  },
);


/// 计数页面页面
Handler counterPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return CounterPage();
  },
);