import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list/guide/page.dart';
import 'package:fish_redux_demo/list/home/page.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'count/page.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      ///计数器模块演示
      "count": CountPage(),

      ///列表模块演示
      "guide": GuidePage(),
      "home": HomePage(),
      //书架模块
    },
  );

  return MaterialApp(
    title: 'FishRedux',
    home: routes.buildPage("count", null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });

//      Material页面切换风格
//      return MaterialPageRoute<Object>(builder: (BuildContext context) {
//        return routes.buildPage(settings.name, settings.arguments);
//      });
    },
  );
}
