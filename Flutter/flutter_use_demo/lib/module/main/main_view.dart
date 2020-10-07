import 'package:flutter/material.dart';
import 'package:flutter_use_demo/app/utils/ui/auto_ui.dart';
import 'package:flutter_use_demo/module/main/main_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(auto(20)),
      width: double.infinity,
      child: Wrap(
        spacing: auto(20),
        children: MainState().init().list.map((e) {
          return _item(e);
        }).toList(),
      ),
    );
  }

  Widget _item(BtnInfo btnInfo) {
    return Container(
      height: auto(50),
      width: auto(50),
      color: Colors.indigoAccent,
    );
  }
}
