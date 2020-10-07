part of 'main_bloc.dart';

class MainState {
  //分类按钮数据源
  List<BtnInfo> list;

  MainState init() {
    return MainState()
      ..list = [
        BtnInfo(name: 'dialog弹窗', tag: 'dialog'),
        BtnInfo(name: '测试', tag: 'test'),
      ];
  }

  MainState clone() {
    return MainState()..list = list;
  }
}

///按钮信息
class BtnInfo {

  BtnInfo({
    this.name,
    this.tag,
  });

  ///按钮名称
  String name;

  ///按钮标识
  String tag;
}
