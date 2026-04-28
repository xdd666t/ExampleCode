part of 'main_bloc.dart';

class MainState {
  int selectedIndex;
  List<BtnInfo> itemList;
  List<Widget> pageList;
  PageController pageController;

  MainState()
      : selectedIndex = 0,
        itemList = [],
        pageList = [],
        pageController = PageController();

  MainState init() {
    ///item栏目
    List<BtnInfo> itemList = [
      BtnInfo(
        title: "范例",
        icon: const Icon(Icons.opacity),
      ),
      BtnInfo(
        title: "功能",
        icon: const Icon(Icons.bubble_chart),
      ),
      BtnInfo(
        title: "设置",
        icon: const Icon(Icons.settings),
      ),
    ];

    ///PageView页面
    List<Widget> pageList = [
      const ExamplePage(),
      const FunctionPage(),
      Center(child: Container()),
    ];

    return MainState()
      ..pageList = pageList
      ..itemList = itemList
      ..pageController = PageController()
      ..selectedIndex = 0;
  }

  MainState clone() {
    return MainState()
      ..pageController = pageController
      ..selectedIndex = selectedIndex
      ..itemList = itemList
      ..pageList = pageList;
  }
}
