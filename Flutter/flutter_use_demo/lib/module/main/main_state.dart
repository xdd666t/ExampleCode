part of 'main_bloc.dart';

class MainState {
  int selectedIndex;

  //分类按钮数据源
  List<BtnInfo> list;

  ///Navigation的item信息
  List<BtnInfo> itemList;

  ///PageView页面
  List<Widget> pageList;

  MainState init() {
    ///item栏目
    List<BtnInfo> itemList = [
      BtnInfo(
        title: "功能",
        icon: Icon(Icons.bubble_chart),
      ),
      BtnInfo(
        title: "数据",
        icon: Icon(Icons.description),
      ),
      BtnInfo(
        title: "设置",
        icon: Icon(Icons.settings),
      ),
    ];

    ///PageView页面
    List<Widget> pageList = [
      FunctionPage(),
      Center(child: Container()),
      Center(child: Container()),
    ];

    return MainState()
      ..pageList = pageList
      ..itemList = itemList
      ..selectedIndex = 0;
  }

  MainState clone() {
    return MainState()
      ..selectedIndex = selectedIndex
      ..itemList = itemList
      ..pageList = pageList;
  }
}


