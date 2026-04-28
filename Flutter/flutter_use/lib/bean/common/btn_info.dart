import 'package:flutter/material.dart';

///按钮信息
class BtnInfo {
  BtnInfo({
    this.title,
    this.tag,
    this.icon,
  });

  ///按钮名称
  String? title;

  ///按钮标识
  String? tag;

  ///正常情况图标
  Icon? icon;

  /// jsonDecode(jsonStr) 方法中会调用实体类的这个方法。如果实体类中没有这个方法，会报错。
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["title"] = title;
    map["tag"] = tag;
    map["icon"] = icon;
    return map;
  }
}
