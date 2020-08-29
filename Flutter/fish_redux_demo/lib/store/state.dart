import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

abstract class GlobalBaseState{
  StoreModel store;
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState>{

  @override
  GlobalState clone() {
    return GlobalState();
  }

  @override
  StoreModel store = StoreModel(
    /// store这个变量,在这必须示例化,不然引用该变量中的字段,会报空指针
    /// 下面的字段,赋初值,就是初始时展示的全局状态
    /// 这地方初值,理应从缓存或数据库中取,表明用户选择的全局状态
    themeColor: Colors.lightBlue
  );
}

///中间全局实体
///需要增加字段就在这个实体里面添加就行了
class StoreModel {
  Color themeColor;

  StoreModel({this.themeColor});
}