import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_use_demo/module/main/main_bloc.dart';
import 'package:flutter_use_demo/module/main/widget/side_navigation.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      ///在MainBloc上使用add方法,添加初始化事件
      create: (BuildContext context) => MainBloc()..add(MainInitEvent()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _body(),
      ),
    );
  }

  ///主体模块
  Widget _body() {
    var _pageController = PageController();

    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Row(
          children: [
            ///侧边栏区域
            SideNavigation(
              selectedIndex: state.selectedIndex,
              sideItems: state.itemList,
              onItem: (index) {
                context
                    .bloc<MainBloc>()
                    .add(SwitchTabEvent(selectedIndex: index));
                _pageController.jumpToPage(index);
              },
            ),

            ///Expanded占满剩下的空间
            Expanded(
              child: _mainBodyPage(_pageController, state),
            )
          ],
        );
      },
    );
  }

  ///NavigationRail右边的区域,使用PageView,主体内容页面
  Widget _mainBodyPage(PageController pageController, MainState state) {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: state.pageList.length,
      itemBuilder: (context, index) => state.pageList[index],
      controller: pageController,
    );
  }
}
