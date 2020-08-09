import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/guide/page.dart';
import 'package:fish_redux_demo/jump/first/page.dart';
import 'package:fish_redux_demo/jump/second/page.dart';
import 'package:fish_redux_demo/list/page.dart';
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
      ///导航页面
      "GuidePage": GuidePage(),
      ///计数器模块演示
      "CountPage": CountPage(),
      ///页面传值跳转模块演示
      "FirstPage": FirstPage(),
      "SecondPage": SecondPage(),
      ///列表模块演示
      "ListPage": ListPage(),
    },
  );

  return MaterialApp(
    title: 'FishRedux',
    home: routes.buildPage("GuidePage", null), //作为默认页面
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
