import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class AreaState implements Cloneable<AreaState> {
  String title;
  String text;
  Color color;

  AreaState({
    this.title = "",
    this.color = Colors.blue,
    this.text = "",
  });

  @override
  AreaState clone() {
    return AreaState()
      ..color = color
      ..text = text
      ..title = title;
  }
}
