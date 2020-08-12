import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/guide/page.dart';
import 'package:fish_redux_demo/jump/first/page.dart';
import 'package:fish_redux_demo/jump/second/page.dart';
import 'package:fish_redux_demo/list/page.dart';
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'count/page.dart';
import 'store/state.dart';
import 'store/store.dart';

void main() {
  runApp(createApp());
}

Widget createApp() {
  ///全局状态管理
  _updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState p = pageState;

      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;
        if (p.themeColor != appState.themeColor) {
          newState.themeColor = appState.themeColor;
        }
        /// 返回新的 state 并将数据设置到 ui
        return newState;
      }
      return pageState;
    };
  }

  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    ///全局状态管理:只有特定的范围的Page(State继承了全局状态),才需要建立和 AppStore 的连接关系
    visitor: (String path, Page<Object, dynamic> page) {
      if (page.isTypeof<GlobalBaseState>()) {
        ///建立AppStore驱动PageStore的单向数据连接： 参数1 AppStore  参数2 当AppStore.state变化时,PageStore.state该如何变化
        page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
      }
    },

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
