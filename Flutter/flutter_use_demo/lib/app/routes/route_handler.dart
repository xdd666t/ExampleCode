import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_use_demo/module/main/main_view.dart';

/// 首页
Handler mainPageHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return MainPage();
  },
);
